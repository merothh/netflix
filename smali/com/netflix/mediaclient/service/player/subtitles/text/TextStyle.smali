.class public Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
.super Ljava/lang/Object;
.source "TextStyle.java"


# static fields
.field public static final BACKGROUND_COLOR:Ljava/lang/String; = "tts:backgroundColor"

.field public static final COLOR:Ljava/lang/String; = "tts:color"

.field public static final DISPLAY_ALIGN:Ljava/lang/String; = "tts:displayAlign"

.field public static final EXTENT:Ljava/lang/String; = "tts:extent"

.field public static final FONT_DECORATION:Ljava/lang/String; = "tts:textDecoration"

.field public static final FONT_FAMILY:Ljava/lang/String; = "tts:fontFamily"

.field public static final FONT_SIZE:Ljava/lang/String; = "tts:fontSize"

.field public static final FONT_STYLE:Ljava/lang/String; = "tts:fontStyle"

.field public static final FONT_WEIGHT:Ljava/lang/String; = "tts:fontWeight"

.field public static final ID:Ljava/lang/String; = "xml:id"

.field private static final MAX_FONT_SIZE:I = 0xc8

.field private static final MIN_FONT_SIZE:I = 0x19

.field public static final OPACITY:Ljava/lang/String; = "tts:opacity"

.field public static final ORIGIN:Ljava/lang/String; = "tts:origin"

.field public static final PARENT_STYLE_ID:Ljava/lang/String; = "style"

.field private static final TAG:Ljava/lang/String; = "nf_subtitles"

.field public static final TEXT_ALIGN:Ljava/lang/String; = "tts:textAlign"

.field public static final TEXT_OUTLINE:Ljava/lang/String; = "tts:textOutline"

.field public static final WINDOW_COLOR:Ljava/lang/String; = "tts:windowColor"


# instance fields
.field private mBackgroundColor:Ljava/lang/String;

.field private mBackgroundOpacity:Ljava/lang/Float;

.field private mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

.field private mColor:Ljava/lang/String;

.field private mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

.field private mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field private mFontSize:Ljava/lang/Integer;

.field private mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

.field private mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

.field private mId:Ljava/lang/String;

.field private mItalic:Ljava/lang/Boolean;

.field private mOpacity:Ljava/lang/Float;

.field private mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

.field private mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

.field private mParentStyleId:Ljava/lang/String;

.field private mUnderline:Ljava/lang/Boolean;

.field private mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

.field private mWindowColor:Ljava/lang/String;

.field private mWindowOpacity:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Copy constructor must have object to work with, Null passed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    iput-object p7, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    iput-object p8, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    iput-object p9, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    iput-object p11, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    iput-object p12, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    iput-object p13, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    return-void
.end method

.method public static buildSubtitleDefaults(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->buildSubtitleSettings(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    return-object v0
.end method

.method public static buildSubtitleSettings(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharColor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowColor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharStyle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharSize()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharOpacity()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowOpacity()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundOpacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getDefaultOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->setEdgeType(Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;)V

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->getColorStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->setEdgeColor(Ljava/lang/String;)V

    :cond_5
    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->getColorStringValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->getColorStringValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->getColorStringValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    :cond_9
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharStyle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    :cond_a
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharSize()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->lookup(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    :cond_b
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharOpacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharOpacity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->lookup(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    :cond_c
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowOpacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowOpacity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->lookup(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    :cond_d
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundOpacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundOpacity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->lookup(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    goto/16 :goto_0
.end method

.method public static createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 5

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Element can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parser can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>()V

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->populate(Lorg/w3c/dom/Element;)Z

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getCellResolution()Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parent style found. ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getNamedStyle(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parent style found, merge: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Apply default style"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Style created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v0

    :cond_7
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Parent style NOT found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getFontWeight(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->createFontWeight(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v0

    return-object v0
.end method

.method static getStyleItalic(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "italic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method static isStyleUnderline(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "underline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private populate(Lorg/w3c/dom/Element;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "xml:id"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_0
    const-string/jumbo v2, "style"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :goto_1
    const-string/jumbo v2, "tts:color"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->findColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    const-string/jumbo v2, "tts:backgroundColor"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->findColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    const-string/jumbo v2, "tts:windowColor"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->findColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    const-string/jumbo v2, "tts:fontSize"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    const/16 v4, 0xc8

    invoke-static {v2, v3, v4, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeParsePercentage(Ljava/lang/String;IIZ)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    const-string/jumbo v2, "tts:textOutline"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    const-string/jumbo v2, "tts:fontFamily"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    const-string/jumbo v2, "tts:fontStyle"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getStyleItalic(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    const-string/jumbo v2, "tts:fontWeight"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontWeight(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-eqz v2, :cond_e

    move v0, v1

    :cond_7
    :goto_2
    const-string/jumbo v2, "tts:opacity"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->lookup(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    if-eqz v2, :cond_f

    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    const-string/jumbo v0, "tts:textAlign"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->from(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    :cond_8
    const-string/jumbo v0, "tts:displayAlign"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->from(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    :cond_9
    const-string/jumbo v0, "tts:extent"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->createInstance(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;)Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    :cond_a
    const-string/jumbo v0, "tts:origin"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->createInstance(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;)Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    :cond_b
    return v1

    :cond_c
    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_0

    :cond_d
    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :cond_e
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getDefaultFontWeight(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    goto :goto_2

    :cond_f
    move v1, v0

    goto :goto_3
.end method


# virtual methods
.method addStyle(Lorg/w3c/dom/Element;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->populate(Lorg/w3c/dom/Element;)Z

    move-result v0

    return v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundOpacity()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    return-object v0
.end method

.method public getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    return-object v0
.end method

.method public getFontSize()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFontWeight()Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    return-object v0
.end method

.method public getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getItalic()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOpacity()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    return-object v0
.end method

.method public getOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    return-object v0
.end method

.method public getParentStyleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnderline()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    return-object v0
.end method

.method public getWindowColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowOpacity()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Use parent color "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Use parent mFontSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    :cond_d
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    :cond_e
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TextStyle ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, ", ParentStyleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, ", Color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v1, ", WindowColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v1, ", BackgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const-string/jumbo v1, ", FontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-eqz v1, :cond_6

    const-string/jumbo v1, ", FontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    if-eqz v1, :cond_7

    const-string/jumbo v1, ", Outline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    const-string/jumbo v1, ", Italic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    const-string/jumbo v1, ", Underline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-eqz v1, :cond_a

    const-string/jumbo v1, ", Font weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_b

    const-string/jumbo v1, ", Opacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_c

    const-string/jumbo v1, ", WindowOpacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_d

    const-string/jumbo v1, ", BackgroundOpacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    if-eqz v1, :cond_e

    const-string/jumbo v1, ", Origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    if-eqz v1, :cond_f

    const-string/jumbo v1, ", Extent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    if-eqz v1, :cond_10

    const-string/jumbo v1, ", HorizontalAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    if-eqz v1, :cond_11

    const-string/jumbo v1, ", VerticalAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_11
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
