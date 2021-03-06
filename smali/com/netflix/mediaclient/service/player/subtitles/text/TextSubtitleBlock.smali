.class public Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;
.super Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;
.source "TextSubtitleBlock.java"


# static fields
.field public static final BEGIN:Ljava/lang/String; = "begin"

.field public static final END:Ljava/lang/String; = "end"

.field public static final ID:Ljava/lang/String; = "xml:id"

.field public static final REGION:Ljava/lang/String; = "region"


# instance fields
.field protected mDisplayed:Z

.field protected mNumberOfDisplays:I

.field private mRegion:Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

.field private mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field private mTextNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalNumberOfLines:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V
    .locals 6

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTextNodes:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "P can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parser can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "xml:id"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "Block id is not specified, it will be faked."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p2, p4, p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->parseRegion(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;Lorg/w3c/dom/Element;)V

    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    const-string/jumbo v0, "begin"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getTickRate()D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->parseTime(Ljava/lang/String;D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStart:J

    const-string/jumbo v0, "end"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getTickRate()D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->parseTime(Ljava/lang/String;D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mEnd:J

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Use subtitle from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStart:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mEnd:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->parseTextNodes(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Element;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Total number of lines needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTotalNumberOfLines:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Max font size multplier from content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getUserDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Use user overide for mMaxFontSizeMultiplier"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    :cond_5
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "Max font size multplier set to 100! "

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    :cond_6
    return-void

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private handleSpanNode(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Element;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I
    .locals 8

    const/4 v1, 0x0

    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "SPAN node, create subtitle block"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p1, p4}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v2

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-direct {p0, p1, v4, p3, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->handleXmlElement(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Node;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I

    move-result p3

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    invoke-direct {p0, p1, v4, p3, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->handleTextNode(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;Lorg/w3c/dom/Node;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    move p3, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "nf_subtitles"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignore node of type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return p3
.end method

.method private handleTextNode(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;Lorg/w3c/dom/Node;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V
    .locals 3

    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Text node, create subtitle block"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v0, p4}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    :cond_0
    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTextNodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->updateBlockContainerDimensions(Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    goto :goto_0
.end method

.method private handleXmlElement(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Node;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I
    .locals 3

    move-object v0, p2

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParserHelper;->isBreak(Lorg/w3c/dom/Element;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Break line, increase br counter"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p3, p3, 0x1

    :cond_0
    :goto_0
    return p3

    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParserHelper;->isSpan(Lorg/w3c/dom/Element;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->handleSpanNode(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Element;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I

    move-result p3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignore node of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseRegion(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;Lorg/w3c/dom/Element;)V
    .locals 4

    const-string/jumbo v0, "region"

    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Region is not specified. Use body region."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mRegion:Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Region is not specified and body region is not provided. Use default region."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Belongs to region "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getNamedRegion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mRegion:Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mRegion:Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Region NOT found for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " and body region not used, use default region!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseTextNodes(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Element;)V
    .locals 8

    const/4 v1, 0x0

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    move v0, v1

    move v2, v1

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {p0, p1, v4, v2, v5}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->handleXmlElement(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Node;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I

    move-result v2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v2, v5}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->handleTextNode(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;Lorg/w3c/dom/Node;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "nf_subtitles"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignore node of type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-void
.end method

.method private parseTime(Ljava/lang/String;D)J
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/util/SubtitleUtils;->parseTime(Ljava/lang/String;D)J

    move-result-wide v0

    return-wide v0
.end method

.method private updateBlockContainerDimensions(Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;)V
    .locals 3

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTotalNumberOfLines:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getLineBreaks()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTotalNumberOfLines:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Font size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    :cond_1
    return-void
.end method


# virtual methods
.method public displayed()V
    .locals 3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mDisplayed:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subtitle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already visible, do not count it again as displayed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subtitle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not visible, count it as displayed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mDisplayed:Z

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mNumberOfDisplays:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mNumberOfDisplays:I

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getNumberOfDisplays()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mNumberOfDisplays:I

    return v0
.end method

.method public getRegion()Lcom/netflix/mediaclient/service/player/subtitles/text/Region;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mRegion:Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    return-object v0
.end method

.method public getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public getTextNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTextNodes:Ljava/util/List;

    return-object v0
.end method

.method public getTotalNumberOfLines()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTotalNumberOfLines:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public seeked(J)V
    .locals 5

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mEnd:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mDisplayed:Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TextSubtitleBlock [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mRegion:Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTextNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTextNodes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTotalNumberOfLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTotalNumberOfLines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMaxFontSizeMultiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasDisplayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mDisplayed:Z

    return v0
.end method
