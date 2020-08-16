import re
import os
import json

from file_util import FileUtil

VERSION = 'us_1.0'
LD_NAME = 'dkr.ld'
ASM_DIR = './asm'
SRC_DIR = './src'
LIB_ASM_DIR = './lib/asm'
LIB_SRC_DIR = './lib/src'
ASSETS_FILENAME = './asm/assets/assets.s'
ASSETS_LUT_FILENAME = './asm/assets/assets_lut.s'
ASSETS_DIR = './assets/' + VERSION
ASSETS_START = 0x0D8200
UCODE_DIR = './ucode/' + VERSION
UCODE_TEXT_FILENAME = './asm/assets/ucode_text.s'
UCODE_DATA_FILENAME = './asm/assets/ucode_data.s'
BUILD_DIR = 'build/' + VERSION

class LD:
    def __init__(self, file):
        print('Generating linker file...')
        self.generate_assets_file()
        self.generate_ucode_files()
        self.files = self.get_code_files()
        self.indentLevel = 0
        self.file = file
        self.gen_comment('linker script generated by generate_ld.py')
        self.gen_newline()
        self.gen_line('OUTPUT_ARCH (mips)')
        self.gen_newline()
        self.gen_sections()
        print('New linker file created!')
        
    def gen_sections(self):
        self.gen_line('SECTIONS')
        self.gen_open_block()
        self.gen_line('romPos = 0x0;')
        self.gen_boot_section()
        self.gen_main_section()
        self.gen_ucode_text_section()
        self.gen_data_section()
        self.gen_ucode_data_section()
        self.gen_assets_section()
        self.gen_discard()
        self.gen_close_block()
    
    def gen_boot_section(self):
        self.gen_line('.boot 0 : AT(romPos)')
        self.gen_open_block()
        self.gen_line(BUILD_DIR + '/asm/boot/rom_header.o(.text);')
        self.gen_line(BUILD_DIR + '/asm/boot/rom_boot.o(.text);')
        self.gen_close_block()
        self.gen_line('romPos += SIZEOF(.boot);')
        self.gen_newline()
    
    def gen_main_section(self):
        self.gen_line('.main 0x80000400 : AT(romPos) SUBALIGN(16)')
        self.gen_open_block()
        for file in self.files:
            self.gen_line(file[0] + '(.text);')
        self.gen_close_block()
        self.gen_line('romPos += SIZEOF(.main);')
        self.gen_newline()
        
    def gen_ucode_text_section(self):
        self.gen_line('.ucodeText 0 : AT(romPos)')
        self.gen_open_block()
        self.gen_line(BUILD_DIR + '/asm/assets/ucode_text.o(.text);')
        self.gen_close_block()
        self.gen_line('romPos += SIZEOF(.ucodeText);')
        self.gen_newline()
        
    def gen_data_section(self):
        self.gen_line('.main_data 0x80000400 : AT(romPos) SUBALIGN(16)')
        self.gen_open_block()
        self.gen_line(BUILD_DIR + '/data/dkr.data.o(.data);')
        self.gen_close_block()
        self.gen_line('romPos += SIZEOF(.main_data);')
        self.gen_newline()
        
    def gen_ucode_data_section(self):
        self.gen_line('.ucodeData 0 : AT(romPos)')
        self.gen_open_block()
        self.gen_line(BUILD_DIR + '/asm/assets/ucode_data.o(.text);')
        self.gen_close_block()
        self.gen_line('romPos += SIZEOF(.ucodeData);')
        self.gen_newline()
        
    def gen_assets_section(self):
        self.gen_line('__ASSETS_LUT_START = romPos;');
        self.gen_newline()
        
        self.gen_line('.assets_lut 0 : AT(romPos)')
        self.gen_open_block()
        self.gen_line(BUILD_DIR + '/asm/assets/assets_lut.o(.text);')
        self.gen_close_block()
        self.gen_line('romPos += SIZEOF(.assets_lut);')
        self.gen_newline()
        
        self.gen_line('__ASSETS_LUT_END = romPos;');
        self.gen_newline()
        
        self.gen_line('.assets 0 : AT(romPos)')
        self.gen_open_block()
        self.gen_line(BUILD_DIR + '/asm/assets/assets.o(.text);')
        self.gen_close_block()
        self.gen_line('romPos += SIZEOF(.assets);')
        self.gen_newline()
        
    def gen_discard(self):
        self.gen_comment('Discard everything not specifically mentioned above.')
        self.gen_line('/DISCARD/ :')
        self.gen_open_block()
        self.gen_line('*(*);')
        self.gen_close_block()
    
    def increase_indent(self):
        self.indentLevel += 1
    
    def decrease_indent(self):
        self.indentLevel -= 1
        
    def gen_open_block(self):
        self.gen_line('{')
        self.increase_indent()
        
    def gen_close_block(self):
        self.decrease_indent()
        self.gen_line('}')
    
    def gen_line(self, text):
        spaces = 4 * self.indentLevel
        while spaces > 0:
            self.file.write(' ')
            spaces -= 1
        self.file.write(text)
        self.gen_newline()
        
    def gen_comment(self, text):
        spaces = 4 * self.indentLevel
        while spaces > 0:
            self.file.write(' ')
            spaces -= 1
        self.file.write('/* ' + text + ' */')
        self.gen_newline()
        
    def gen_newline(self):
        self.file.write('\n')
        
    def append_files(self, files, extensions, directory, outputDir):
        filenames = FileUtil.get_filenames_from_directory(directory, extensions)
        regex = r'[\/][*]+\s*RAM_POS:\s*0x([0-9a-fA-F]+)\s*[*]+[\/]'
        for filename in filenames:
            with open(directory + '/' + filename, 'r') as inFile:
                notDone = True
                line = inFile.readline()
                while line:
                    matches = re.match(regex, line)
                    if matches is None:
                        line = inFile.readline()
                        continue
                    matchedGroups = matches.groups()
                    files.append((outputDir + filename[:-2] + '.o', '', matchedGroups[0], 0))
                    break
    
    def get_code_files(self):
        files = []
        self.append_files(files, ('.s',), ASM_DIR, BUILD_DIR + '/asm/')
        self.append_files(files, ('.c',), SRC_DIR, BUILD_DIR + '/src/')
        self.append_files(files, ('.s',), LIB_ASM_DIR, BUILD_DIR + '/lib/asm/')
        self.append_files(files, ('.c',), LIB_SRC_DIR, BUILD_DIR + '/lib/src/')
        files.sort(key = lambda x: (x[2], x[3])) # Sort tuples by RAM address and prioritize src files first.
        return files
    
    def get_asset_files(self):
        assetFiles = []
        mainLUT = ''
        with open(ASSETS_DIR + '/assets.json') as jsonFile:
            data = json.load(jsonFile)
            for asset in data['assets']:
                if asset['category'] == 'main':
                    if mainLUT != '':
                        raise Exception('Category "main" was expected to only have 1 item. Please update generate_ld.py.')
                    mainLUT = BUILD_DIR + '/' + asset['filename']
                    continue
                filename, extension = os.path.splitext(asset['filename'])
                if extension == '.cbin' or extension == '.ebin':
                    filename += extension
                else:
                    filename += '.bin'
                assetFiles.append((BUILD_DIR + '/' + filename, extension))
        return assetFiles, mainLUT

    def generate_assets_file(self):
        assets, mainLUT = self.get_asset_files()
        assetsText = '# This file was generated by generate_ld.py\n\n'
        assetsText += '.macro .incbinaligned filename\n    .balign 16\n    .incbin "\\filename"\n.endm\n\n'
        prevAssetMadeAlignment = False
        for asset in assets:
            if 'lut' in asset[0]:
                #assetsText += '.balign 16\n'
                prevAssetMadeAlignment = True
            if prevAssetMadeAlignment:
                assetsText += '.incbinaligned "./' + asset[0] + '"\n'
            else:
                assetsText += '.incbin "./' + asset[0] + '"\n'
            if asset[1] == '.png' or asset[1] == '.cbin' or 'lut' in asset[0]: # Make sure that compressed data ends on a 16-byte boundary
                #assetsText += '.balign 16\n'
                prevAssetMadeAlignment = True
            else:
                prevAssetMadeAlignment = False
        with open(ASSETS_FILENAME, "w") as assetsFile:
            assetsFile.write(assetsText)
        
        assetsLutText = '# This file was generated by generate_ld.py\n\n'
        assetsLutText += '.incbin "./' + mainLUT + '"\n'
        with open(ASSETS_LUT_FILENAME, "w") as assetsLutFile:
            assetsLutFile.write(assetsLutText)
        
    def get_ucode_files(self):
        ucode_files = [[], []]
        assetFilenames = FileUtil.getListOfFiles(UCODE_DIR)
        regex = r'[.][\/]ucode[\/][^\/]*[\/](([^\/]*[\/])?[^.]*)[.](([.]?[^.]*)+)([.][A-Za-z0-9_]*)'
        for filename in assetFilenames:
            matches = re.match(regex, filename)
            if matches is None:
                raise Exception('Invalid filename: \"' + filename + '"')
            matchedGroups = matches.groups()
            fileExtension = matchedGroups[4]
            fileProperties = matchedGroups[2].split('.')
            ramAddress = fileProperties[0]
            outFilename = BUILD_DIR + '/ucode/' + matchedGroups[0] + '.' + matchedGroups[2] + '.bin'
            if matchedGroups[0].startswith('ucode_'):
                ucode_files[0].append((outFilename, ramAddress, fileExtension))
            else:
                ucode_files[1].append((outFilename, ramAddress, fileExtension))
        ucode_files[0].sort(key = lambda x: x[1]) # Sort tuples by RAM address
        ucode_files[1].sort(key = lambda x: x[1]) # Sort tuples by RAM address
        return ucode_files
            
    def generate_ucode_files(self):
        ucodeFiles = self.get_ucode_files()
        
        assetsUCodeText = '# This file was generated by generate_ld.py\n\n'
        assetsUCodeData = '# This file was generated by generate_ld.py\n\n'
        
        for file in ucodeFiles[0]:
            assetsUCodeText += '.incbin "./' + file[0] + '"\n'
        for file in ucodeFiles[1]:
            assetsUCodeData += '.incbin "./' + file[0] + '"\n'
            
        with open(UCODE_TEXT_FILENAME, "w") as assetsFile:
            assetsFile.write(assetsUCodeText)
        with open(UCODE_DATA_FILENAME, "w") as assetsFile:
            assetsFile.write(assetsUCodeData)
        
            
        
with open(LD_NAME, 'w') as ldFile:
    LD(ldFile)
