.class final Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# static fields
.field private static final TYPE_cenc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "cenc"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->TYPE_cenc:I

    return-void
.end method

.method private static findEsdsPosition(Lcom/google/android/exoplayer/util/ParsableByteArray;II)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v1

    :goto_0
    sub-int v0, v1, p1

    if-ge v0, p2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v3, "childAtomSize should be positive"

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_2
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 19

    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    const/4 v6, 0x0

    if-eqz p8, :cond_7

    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    move v8, v6

    :goto_0
    if-eqz v8, :cond_0

    const/4 v6, 0x1

    if-ne v8, v6, :cond_8

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const/16 v8, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v16

    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-ne v0, v8, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;IILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I

    move-result p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    :cond_2
    const/4 v8, 0x0

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_9

    const-string/jumbo v8, "audio/ac3"

    :cond_3
    :goto_2
    const/16 v17, 0x0

    move v13, v6

    move v12, v7

    move-object v7, v8

    :goto_3
    sub-int v6, v16, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v18

    if-lez v18, :cond_12

    const/4 v6, 0x1

    :goto_4
    const-string/jumbo v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-eq v6, v8, :cond_4

    if-eqz p8, :cond_14

    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_wave:I

    if-ne v6, v8, :cond_14

    :cond_4
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v6, v8, :cond_13

    move/from16 v6, v16

    :goto_5
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1b

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v8

    iget-object v6, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    iget-object v6, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, [B

    const-string/jumbo v6, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v8}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v9

    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_5
    :goto_6
    move-object/from16 v17, v8

    :cond_6
    :goto_7
    add-int v16, v16, v18

    goto :goto_3

    :cond_7
    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    move v8, v6

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x2

    if-ne v8, v6, :cond_18

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    const/16 v8, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    :cond_9
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_a

    const-string/jumbo v8, "audio/eac3"

    goto/16 :goto_2

    :cond_a
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_b

    const-string/jumbo v8, "audio/vnd.dts"

    goto/16 :goto_2

    :cond_b
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-eq v0, v9, :cond_c

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_d

    :cond_c
    const-string/jumbo v8, "audio/vnd.dts.hd"

    goto/16 :goto_2

    :cond_d
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_e

    const-string/jumbo v8, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_2

    :cond_e
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_f

    const-string/jumbo v8, "audio/3gpp"

    goto/16 :goto_2

    :cond_f
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_10

    const-string/jumbo v8, "audio/amr-wb"

    goto/16 :goto_2

    :cond_10
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_lpcm:I

    move/from16 v0, p1

    if-eq v0, v9, :cond_11

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sowt:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_3

    :cond_11
    const-string/jumbo v8, "audio/raw"

    goto/16 :goto_2

    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->findEsdsPosition(Lcom/google/android/exoplayer/util/ParsableByteArray;II)I

    move-result v6

    goto/16 :goto_5

    :cond_14
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dac3:I

    if-ne v6, v8, :cond_15

    add-int/lit8 v6, v16, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lcom/google/android/exoplayer/util/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_7

    :cond_15
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dec3:I

    if-ne v6, v8, :cond_16

    add-int/lit8 v6, v16, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lcom/google/android/exoplayer/util/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_7

    :cond_16
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ddts:I

    if-ne v6, v8, :cond_6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-wide/from16 v10, p5

    move-object/from16 v15, p7

    invoke-static/range {v6 .. v15}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, p9

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v6, :cond_18

    if-eqz v7, :cond_18

    const-string/jumbo v6, "audio/raw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    const/16 v16, 0x2

    :goto_8
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    if-nez v17, :cond_1a

    const/4 v14, 0x0

    :goto_9
    move-wide/from16 v10, p5

    move-object/from16 v15, p7

    invoke-static/range {v6 .. v16}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    :cond_18
    return-void

    :cond_19
    const/16 v16, -0x1

    goto :goto_8

    :cond_1a
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_9

    :cond_1b
    move-object/from16 v8, v17

    goto/16 :goto_6
.end method

.method private static parseAvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    .locals 8

    const/4 v2, 0x0

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v0, 0x1

    const/4 v0, 0x3

    if-ne v3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v5, v1, 0x1f

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    new-instance v1, Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->setPosition(I)V

    invoke-static {v1}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    :cond_3
    new-instance v1, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    invoke-direct {v1, v4, v3, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;-><init>(Ljava/util/List;IF)V

    return-object v1
.end method

.method private static parseEdts(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eqz p0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    new-array v6, v5, [J

    new-array v7, v5, [J

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_5

    if-ne v4, v8, :cond_2

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_2
    aput-wide v0, v6, v2

    if-ne v4, v8, :cond_3

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    :goto_3
    aput-wide v0, v7, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readShort()S

    move-result v0

    if-eq v0, v8, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_0
    const-string/jumbo v1, "audio/mpeg"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "video/mp4v-es"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "video/avc"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "video/hevc"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "audio/mp4a-latm"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "audio/ac3"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "audio/eac3"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "audio/vnd.dts"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "audio/vnd.dts.hd"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6b -> :sswitch_0
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_6
        0xa9 -> :sswitch_7
        0xaa -> :sswitch_8
        0xab -> :sswitch_8
        0xac -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v0, v1, 0x7f

    :goto_0
    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseHvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v5, v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v7

    move v3, v1

    move v4, v1

    :goto_0
    if-ge v3, v6, :cond_1

    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    move v0, v1

    move v2, v4

    :goto_1
    if-ge v0, v8, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    add-int/lit8 v9, v4, 0x4

    add-int/2addr v2, v9

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    new-array v7, v4, [B

    move v3, v1

    move v0, v1

    :goto_2
    if-ge v3, v6, :cond_3

    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    move v2, v0

    move v0, v1

    :goto_3
    if-ge v0, v8, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    sget-object v10, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v11, v11

    invoke-static {v10, v1, v7, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v10, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v10, v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v11

    invoke-static {v10, v11, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v9

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    const/4 v0, 0x0

    :goto_4
    add-int/lit8 v1, v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    if-nez v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F
    .locals 2

    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_proj:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int/2addr v1, v0

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;IILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v2, v0

    :goto_0
    sub-int v0, v2, p1

    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v4, "childAtomSize should be positive"

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v0, v4, :cond_2

    invoke-static {p0, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v1, p3, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    aput-object v0, v1, p4

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    add-int v0, v2, v3

    move v2, v0

    goto :goto_0
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x8

    :goto_0
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v4, v5, :cond_1

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    array-length v4, v3

    invoke-virtual {p0, v3, v1, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    new-instance v1, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    add-int/lit8 v0, p1, 0x8

    move-object v1, v5

    move v2, v4

    move v6, v0

    move-object v0, v5

    :goto_0
    sub-int v7, v6, p1

    if-ge v7, p2, :cond_4

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v8, v9, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    :goto_1
    add-int/2addr v6, v7

    goto :goto_0

    :cond_1
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v8, v9, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v8, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->TYPE_cenc:I

    if-ne v2, v8, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v8, v9, :cond_0

    invoke-static {p0, v6, v7}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_7

    if-eqz v0, :cond_5

    move v2, v3

    :goto_2
    const-string/jumbo v5, "frma atom is mandatory"

    invoke-static {v2, v5}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v1, :cond_6

    :goto_3
    const-string/jumbo v2, "schi->tenc atom is mandatory"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_5
    move v2, v4

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    move-object v0, v5

    goto :goto_4
.end method

.method private static parseStsd(Lcom/google/android/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .locals 26

    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v24

    new-instance v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;

    move/from16 v0, v24

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v12, 0x0

    :goto_0
    move/from16 v0, v24

    if-ge v12, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v4, v2, :cond_3

    :cond_0
    move-object/from16 v3, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    invoke-static/range {v3 .. v12}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    :cond_1
    :goto_2
    add-int v2, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sowt:I

    if-ne v4, v2, :cond_5

    :cond_4
    move-object/from16 v13, p0

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, p1

    move-wide/from16 v18, p2

    move-object/from16 v20, p5

    move/from16 v21, p6

    move-object/from16 v22, v11

    move/from16 v23, v12

    invoke-static/range {v13 .. v23}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_2

    :cond_5
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_TTML:I

    if-ne v4, v2, :cond_6

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "application/ttml+xml"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_2

    :cond_6
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v4, v2, :cond_7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "application/x-quicktime-tx3g"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_2

    :cond_7
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v4, v2, :cond_8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "application/x-mp4vtt"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_2

    :cond_8
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v4, v2, :cond_1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "application/ttml+xml"

    const/16 v16, -0x1

    const-wide/16 v20, 0x0

    move-wide/from16 v17, p2

    move-object/from16 v19, p5

    invoke-static/range {v14 .. v21}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_2

    :cond_9
    return-object v11
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;
    .locals 13

    const-wide/16 v4, -0x1

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/4 v3, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    if-nez v8, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v9

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v10

    if-nez v8, :cond_0

    move v1, v3

    :cond_0
    move v7, v6

    :goto_1
    if-ge v7, v1, :cond_1

    iget-object v11, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int v12, v10, v7

    aget-byte v11, v11, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    move v0, v6

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    move-wide v0, v4

    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    const/high16 v7, 0x10000

    if-nez v2, :cond_7

    if-ne v4, v7, :cond_7

    neg-int v8, v7

    if-ne v3, v8, :cond_7

    if-nez v5, :cond_7

    const/16 v2, 0x5a

    :goto_3
    new-instance v3, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {v3, v9, v0, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v3

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    :goto_4
    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-nez v7, :cond_2

    move-wide v0, v4

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_4

    :cond_7
    if-nez v2, :cond_8

    neg-int v8, v7

    if-ne v4, v8, :cond_8

    if-ne v3, v7, :cond_8

    if-nez v5, :cond_8

    const/16 v2, 0x10e

    goto :goto_3

    :cond_8
    neg-int v8, v7

    if-ne v2, v8, :cond_9

    if-nez v4, :cond_9

    if-nez v3, :cond_9

    neg-int v2, v7

    if-ne v5, v2, :cond_9

    const/16 v2, 0xb4

    goto :goto_3

    :cond_9
    move v2, v6

    goto :goto_3
.end method

.method public static parseTrak(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;JZ)Lcom/google/android/exoplayer/extractor/mp4/Track;
    .locals 28

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v8

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v15

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_soun:I

    if-eq v15, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-eq v15, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_text:I

    if-eq v15, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_sbtl:I

    if-eq v15, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_subt:I

    if-eq v15, v2, :cond_0

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_0
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v16

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v2

    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v6

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const-wide/16 v10, -0x1

    :goto_2
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v3

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v9

    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v12

    iget-object v13, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move/from16 v14, p4

    invoke-static/range {v8 .. v14}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_edts:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v5

    iget-object v2, v4, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v2, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    goto :goto_2

    :cond_2
    new-instance v13, Lcom/google/android/exoplayer/extractor/mp4/Track;

    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v23, v0

    iget v0, v4, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v24, v0

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [J

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [J

    move-wide/from16 v18, v6

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v26}, Lcom/google/android/exoplayer/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I[J[J)V

    goto/16 :goto_0

    :cond_3
    move-wide/from16 v2, p2

    goto/16 :goto_1
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 19

    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    const/16 v6, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    const/4 v9, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v6, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p8

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;IILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    :cond_0
    const/4 v14, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    move v10, v6

    :goto_0
    sub-int v6, v10, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    sub-int v6, v6, p2

    move/from16 v0, p3

    if-ne v6, v0, :cond_2

    :cond_1
    if-nez v7, :cond_13

    :goto_1
    return-void

    :cond_2
    if-lez v15, :cond_4

    const/4 v6, 0x1

    :goto_2
    const-string/jumbo v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avcC:I

    if-ne v6, v8, :cond_6

    if-nez v7, :cond_5

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    const-string/jumbo v7, "video/avc"

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseAvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    move-result-object v6

    iget-object v14, v6, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;->initializationData:Ljava/util/List;

    iget v8, v6, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p8

    iput v8, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v9, :cond_3

    iget v0, v6, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;->pixelWidthAspectRatio:F

    move/from16 v16, v0

    :cond_3
    move v6, v9

    :goto_4
    add-int v8, v10, v15

    move v10, v8

    move v9, v6

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hvcC:I

    if-ne v6, v8, :cond_8

    if-nez v7, :cond_7

    const/4 v6, 0x1

    :goto_5
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    const-string/jumbo v8, "video/hevc"

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseHvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v7

    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p8

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object v7, v8

    move-object v14, v6

    move v6, v9

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_d263:I

    if-ne v6, v8, :cond_a

    if-nez v7, :cond_9

    const/4 v6, 0x1

    :goto_6
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    const-string/jumbo v7, "video/3gpp"

    move v6, v9

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    :cond_a
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v6, v8, :cond_c

    if-nez v7, :cond_b

    const/4 v6, 0x1

    :goto_7
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v7

    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    move-object v7, v6

    move v6, v9

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    :cond_c
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pasp:I

    if-ne v6, v8, :cond_d

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F

    move-result v16

    const/4 v6, 0x1

    goto :goto_4

    :cond_d
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vpcC:I

    if-ne v6, v8, :cond_10

    if-nez v7, :cond_e

    const/4 v6, 0x1

    :goto_8
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vp08:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_f

    const-string/jumbo v7, "video/x-vnd.on2.vp8"

    :goto_9
    move v6, v9

    goto/16 :goto_4

    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    :cond_f
    const-string/jumbo v7, "video/x-vnd.on2.vp9"

    goto :goto_9

    :cond_10
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sv3d:I

    if-ne v6, v8, :cond_11

    move-object/from16 v0, p0

    invoke-static {v0, v11, v15}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)[B

    move-result-object v17

    move v6, v9

    goto/16 :goto_4

    :cond_11
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_st3d:I

    if-ne v6, v8, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    if-nez v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_12
    move v6, v9

    goto/16 :goto_4

    :pswitch_0
    const/16 v18, 0x0

    move v6, v9

    goto/16 :goto_4

    :pswitch_1
    const/16 v18, 0x1

    move v6, v9

    goto/16 :goto_4

    :pswitch_2
    const/16 v18, 0x2

    move v6, v9

    goto/16 :goto_4

    :cond_13
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-wide/from16 v10, p5

    move/from16 v15, p7

    invoke-static/range {v6 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF[BI)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
