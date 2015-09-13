import os
import sys
import zipfile
import shutil
import logging


rootTotal=[]
dirTotal=[]
filesTotal=[]
monthList=['03 March','10 October','12 December','02 February',\
 '08 August', '06 June', '07 July', '05 May', '04 April',\
 '11 November', '09 September', '01 January']
def Identify():
    """ Lists of all files foleders and dirs """
    rate_path='/home/daniel/Desktop/ratedata'
    for root,dir, files, in os.walk(rate_path):
        if root is not []:
            rootTotal.append(root)
    for dir in os.walk(rate_path):
        if dir is not []:
            dirTotal.append(dir)



    return rootTotal
    return dirTotal

def renamer(dir_tuple):
    """this fuction takes in a tuple-triple that consists of
    (string /path/to/file, List of filenames, and empty list)
    And it makes the subfiles inside of the directory
    a hash of the 2 parent directories like so
        path/to/file/a1/b1/file.zip -->
        path/to/file/a1/b1/a1_b1_file.zip
    """
    logging.basicConfig(filename='log.1',level=logging.DEBUG)
    

    file_name_list=None
    #logging.debug(dir_tuple)

    for i in dir_tuple:
        
        if type(i) is str:
            folder_path=i
            nfolder_path=i.replace(" ","_")
        if i and type(i) is list:
            if i[0].endswith('.zip'):
                file_name_list=i
    if file_name_list is not None:
        for f in file_name_list:
            f_hash_1=os.path.split(nfolder_path)[1]
            f_hash_2=os.path.split(os.path.split(nfolder_path)[0])[1]
            
            fn=f.replace('.','')
            fn=fn.replace("\\","")
            fn=fn.replace('zip','.zip')
            # logging.debug('f= '+f )
            # logging.debug('fn= '+fn )
            nFile_name='%s_%s_%s' % (f_hash_2, f_hash_1,fn)
            # logging.debug('cwd= '+os.getcwd() )
            # logging.debug('nFile_name= '+nFile_name )
            os.chdir(folder_path)
            os.rename(f,nFile_name)

   # print f_hash_1
   # print f_hash_2

def gather_files():
    """walk and gather all files and move them to a directory"""
    Identify()
    reg_path='/home/daniel/Desktop/rate_reg'
    rate_path='/home/daniel/Desktop/ratedata'
    for d in rootTotal:
        l=os.listdir(d)
        for fil in l:
            if fil.endswith('.zip'):
                logging.debug(fil)
                if os.path.exists(reg_path):
                    shutil.copy(d+'/'+fil,reg_path+'/'+fil)
                else:
                    os.mkdir(reg_path)
                    shutil.copy(d+'/'+fil,reg_path+'/'+fil)
def main():
    logging.debug('NEW LOG')
    #Identify()
    #for tupl in dirTotal:
        #renamer(tupl)
    gather_files()


if __name__=="__main__":
    main()






