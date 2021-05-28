import re

from file_util import FileUtil

LINE_START_REGEX = r'\n(/\* ([0-9A-F]{6}) [0-9A-F]{8} [0-9A-F]{8} \*/\s+|\.L80[0-9A-F]{6}:)'
REG_REGEX = r'(\$(at|v[0-1]|a[0-3]|t[0-9]|s[0-7]|k[0-1]|gp|sp|fp|ra))'
GLABEL_UPPER_REGEX = '(' + LINE_START_REGEX + r'lui\s+' + REG_REGEX + r',\s+(0x80[0-9a-f]{2}))'
GLABEL_LOWER_REGEX = '(' + LINE_START_REGEX + r'[sl][bhw]\s+' + REG_REGEX + r',\s+(0x[0-9a-f]{4})\(\4\))'
GLABEL_REGEX = GLABEL_UPPER_REGEX + '(' + LINE_START_REGEX + '[^\n]*){0,10}' + GLABEL_LOWER_REGEX

def _find_glabels(asm):
    glabels = []
    for file in FileUtil.get_filenames_from_directory_recursive('.', '.s'):
        matches = re.findall(GLABEL_REGEX, FileUtil.get_text_from_file(file))
        for match in matches:
            offsets = (match[2], match[11])  # ROM offsets of the lui and [sl][bhw]
            glabel_upper = int(match[5], 16)  # upper immediate of glabel
            glabel_lower = int(match[14], 16)  # lower immediate of the glabel
            if glabel_lower & 0x8000:
                glabel_upper -= 1
            glabel = 'D_%08X' % (glabel_upper << 16 | glabel_lower)
            glabels.append((glabel, *offsets))
    return glabels

def main():
    FileUtil.set_working_dir_to_project_base()
    contents = FileUtil.get_text_from_file('asm/non_matchings/unknown_005740/func_80005254.s')
    glabels = _find_glabels(contents)
    print('%d undeclared labels found:' % len(glabels))
    for glabel in glabels:
        print(glabel)

if __name__ == '__main__':
    main()
