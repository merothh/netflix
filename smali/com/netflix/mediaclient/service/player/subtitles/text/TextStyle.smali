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

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Copy constructor must have object to work with, Null passed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    .line 165
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    .line 166
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    .line 169
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    .line 170
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    .line 171
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 172
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    .line 173
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    .line 174
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    .line 175
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    .line 176
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    .line 177
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    .line 140
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    .line 141
    iput-object p5, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    .line 142
    iput-object p6, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    .line 143
    iput-object p7, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 144
    iput-object p8, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    .line 145
    iput-object p10, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 146
    iput-object p9, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    .line 147
    iput-object p11, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    .line 148
    iput-object p12, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    .line 149
    iput-object p13, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    .line 150
    return-void
.end method

.method public static buildSubtitleDefaults(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 804
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->buildSubtitleSettings(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    return-object v0
.end method

.method public static buildSubtitleSettings(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 727
    if-nez p0, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-object v0

    .line 731
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 732
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 733
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharColor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 734
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowColor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 735
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 736
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharStyle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 737
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharSize()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 738
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharOpacity()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 739
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowOpacity()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 740
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundOpacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 744
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>()V

    .line 747
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 748
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getDefaultOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v1

    .line 749
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 750
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->setEdgeType(Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;)V

    .line 752
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 753
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v2

    .line 754
    if-eqz v2, :cond_5

    .line 755
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->getColorStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->setEdgeColor(Ljava/lang/String;)V

    .line 758
    :cond_5
    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    .line 762
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 763
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v1

    .line 764
    if-eqz v1, :cond_7

    .line 765
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->getColorStringValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    .line 768
    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 769
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v1

    .line 770
    if-eqz v1, :cond_8

    .line 771
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->getColorStringValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    .line 774
    :cond_8
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 775
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v1

    .line 776
    if-eqz v1, :cond_9

    .line 777
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->getColorStringValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    .line 782
    :cond_9
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharStyle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 783
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 785
    :cond_a
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharSize()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 786
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->lookup(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    .line 790
    :cond_b
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharOpacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 791
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharOpacity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->lookup(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    .line 793
    :cond_c
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowOpacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 794
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowOpacity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->lookup(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    .line 796
    :cond_d
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundOpacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundOpacity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->lookup(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    goto/16 :goto_0
.end method

.method public static createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 5

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Element can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    if-nez p1, :cond_1

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parser can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>()V

    .line 201
    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->populate(Lorg/w3c/dom/Element;)Z

    .line 202
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getCellResolution()Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    .line 204
    iget-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 205
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
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

    .line 209
    :cond_2
    iget-object v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getNamedStyle(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_7

    .line 211
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
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

    .line 214
    :cond_3
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 220
    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 221
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Apply default style"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 225
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 226
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

    .line 229
    :cond_6
    return-object v0

    .line 216
    :cond_7
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Parent style NOT found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getFontWeight(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;
    .locals 1

    .prologue
    .line 376
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->createFontWeight(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v0

    return-object v0
.end method

.method static getStyleItalic(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 361
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 365
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

    .prologue
    .line 389
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 393
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

    .prologue
    const/4 v1, 0x1

    .line 246
    const/4 v0, 0x0

    .line 251
    const-string/jumbo v2, "xml:id"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 259
    :goto_0
    const-string/jumbo v2, "style"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 267
    :goto_1
    const-string/jumbo v2, "tts:color"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->findColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    .line 268
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 271
    :cond_0
    const-string/jumbo v2, "tts:backgroundColor"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->findColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    .line 272
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    if-eqz v2, :cond_1

    move v0, v1

    .line 276
    :cond_1
    const-string/jumbo v2, "tts:windowColor"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->findColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    if-eqz v2, :cond_2

    move v0, v1

    .line 281
    :cond_2
    const-string/jumbo v2, "tts:fontSize"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    const/16 v4, 0xc8

    invoke-static {v2, v3, v4, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeParsePercentage(Ljava/lang/String;IIZ)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    .line 282
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    move v0, v1

    .line 286
    :cond_3
    const-string/jumbo v2, "tts:textOutline"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    .line 287
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    if-eqz v2, :cond_4

    move v0, v1

    .line 291
    :cond_4
    const-string/jumbo v2, "tts:fontFamily"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 292
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-eqz v2, :cond_5

    move v0, v1

    .line 296
    :cond_5
    const-string/jumbo v2, "tts:fontStyle"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getStyleItalic(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    .line 297
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    move v0, v1

    .line 301
    :cond_6
    const-string/jumbo v2, "tts:fontWeight"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontWeight(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 302
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-eqz v2, :cond_e

    move v0, v1

    .line 310
    :cond_7
    :goto_2
    const-string/jumbo v2, "tts:opacity"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->lookup(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    .line 311
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    if-eqz v2, :cond_f

    .line 315
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    .line 316
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    .line 318
    const-string/jumbo v0, "tts:textAlign"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 323
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->from(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    .line 326
    :cond_8
    const-string/jumbo v0, "tts:displayAlign"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 331
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->from(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    .line 334
    :cond_9
    const-string/jumbo v0, "tts:extent"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 339
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->createInstance(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;)Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    .line 342
    :cond_a
    const-string/jumbo v0, "tts:origin"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 347
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->createInstance(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;)Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    .line 350
    :cond_b
    return v1

    .line 255
    :cond_c
    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    move v0, v1

    .line 256
    goto/16 :goto_0

    .line 263
    :cond_d
    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    move v0, v1

    .line 264
    goto/16 :goto_1

    .line 305
    :cond_e
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-eqz v2, :cond_7

    .line 306
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

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->populate(Lorg/w3c/dom/Element;)Z

    move-result v0

    return v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundOpacity()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    return-object v0
.end method

.method public getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    return-object v0
.end method

.method public getFontSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFontWeight()Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    return-object v0
.end method

.method public getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getItalic()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOpacity()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    return-object v0
.end method

.method public getOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    return-object v0
.end method

.method public getParentStyleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnderline()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    return-object v0
.end method

.method public getWindowColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowOpacity()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V
    .locals 3

    .prologue
    .line 520
    if-nez p1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 525
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
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

    .line 528
    :cond_2
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    .line 531
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 535
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 542
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    .line 545
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 546
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 547
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

    .line 549
    :cond_6
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    .line 552
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    if-eqz v0, :cond_8

    .line 556
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    .line 559
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-eqz v0, :cond_9

    .line 563
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 566
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 570
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    .line 573
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 577
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    .line 580
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-eqz v0, :cond_c

    .line 584
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 587
    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    if-eqz v0, :cond_d

    .line 591
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    .line 594
    :cond_d
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    if-eqz v0, :cond_e

    .line 598
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    .line 601
    :cond_e
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TextStyle ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 618
    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 621
    const-string/jumbo v1, ", ParentStyleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mParentStyleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 624
    const-string/jumbo v1, ", Color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 627
    const-string/jumbo v1, ", WindowColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 630
    const-string/jumbo v1, ", BackgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 633
    const-string/jumbo v1, ", FontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontSize:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 635
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-eqz v1, :cond_6

    .line 636
    const-string/jumbo v1, ", FontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontFamily:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 638
    :cond_6
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    if-eqz v1, :cond_7

    .line 639
    const-string/jumbo v1, ", Outline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOutline:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 641
    :cond_7
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 642
    const-string/jumbo v1, ", Italic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mItalic:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 644
    :cond_8
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 645
    const-string/jumbo v1, ", Underline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mUnderline:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 647
    :cond_9
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-eqz v1, :cond_a

    .line 648
    const-string/jumbo v1, ", Font weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mFontWeight:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 650
    :cond_a
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_b

    .line 651
    const-string/jumbo v1, ", Opacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOpacity:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 653
    :cond_b
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_c

    .line 654
    const-string/jumbo v1, ", WindowOpacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mWindowOpacity:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 656
    :cond_c
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_d

    .line 657
    const-string/jumbo v1, ", BackgroundOpacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mBackgroundOpacity:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 660
    :cond_d
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    if-eqz v1, :cond_e

    .line 661
    const-string/jumbo v1, ", Origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 664
    :cond_e
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    if-eqz v1, :cond_f

    .line 665
    const-string/jumbo v1, ", Extent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 668
    :cond_f
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    if-eqz v1, :cond_10

    .line 669
    const-string/jumbo v1, ", HorizontalAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 672
    :cond_10
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    if-eqz v1, :cond_11

    .line 673
    const-string/jumbo v1, ", VerticalAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 676
    :cond_11
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
