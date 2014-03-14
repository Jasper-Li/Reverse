// 3. optimized data tables.

union 
{
	char raw[8];
	struct 
	{
		u4 type;
		u4 size;
	}ts;
}header;

enum
{
	kDexChunkClassLookup = 0x434c4b50;
	kDexChunkRegisterMaps	= 0x524d4150;
	kDexChunkEnd		= 0x41454e44;
};

/** (1) DexClassLookup **/

struct DexClassLookup
{
	int size;					//total size, including size
	int numEntries;				//power of 2
	struct
	{
		u4 classDescriptorHash;
		int classDescriptorOffset; // in bytes, start of DEX
		int classDefOffset;		// in bytes, start of DEX
	}table[1];
};

struct ChunckDexClassLookup
{
	Header header;
	DexClassLookup lookup;
}

/** summary is the same as bellow **/


struct ChunckDexClassLookup
{
// header
	struct 
	{
		u4 type;
		u4 size;
	}ts;

// Dex Class Lookup

	int size;					//total size, including size
	int numEntries;				//power of 2
	struct
	{
		u4 classDescriptorHash;
		int classDescriptorOffset; // in bytes, start of DEX
		int classDefOffset;		// in bytes, start of DEX
	}table[numEntries];
}
