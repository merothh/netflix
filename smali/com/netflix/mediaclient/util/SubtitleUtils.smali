.class public final Lcom/netflix/mediaclient/util/SubtitleUtils;
.super Ljava/lang/Object;
.source "SubtitleUtils.java"


# static fields
.field private static final CELL_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_DEVICE_TEXT_STYLE_FOR_MONOSPACE:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field public static final DEFAULT_DEVICE_TEXT_STYLE_FOR_PROPORTIONAL:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field private static final DEFAULT_SPACING_IN_EM_FOR_MONOSPACE_FONT:F = 0.0f

.field private static final DEFAULT_SPACING_IN_EM_FOR_PROPORSIONAL_FONT:F = 0.016f

.field private static final DEFAULT_TEXT_COLOR:Ljava/lang/String; = "FFFFFF"

.field private static final DEFAULT_TEXT_STLE_ID:Ljava/lang/String; = "<%NF_DEFAULT_TEXT_STYLE%>"

.field private static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field private static final PERCENT_PATTERN:Ljava/util/regex/Pattern;

.field public static final SUBTITITLE_IMAGE_1080P_HEIGHT:I = 0x438

.field public static final SUBTITITLE_IMAGE_1080P_WIDTH:I = 0x780

.field public static final SUBTITITLE_IMAGE_480P_HEIGHT:I = 0x1e0

.field public static final SUBTITITLE_IMAGE_480P_WIDTH:I = 0x355

.field public static final SUBTITITLE_IMAGE_720P_HEIGHT:I = 0x2d0

.field public static final SUBTITITLE_IMAGE_720P_WIDTH:I = 0x500

.field private static final TAG:Ljava/lang/String; = "nf_subtitles_render"

.field private static final TICK_MS_PATTERN:Ljava/util/regex/Pattern;

.field private static final TICK_SEC_PATTERN:Ljava/util/regex/Pattern;

.field private static final TICK_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final TICK_T_PATTERN:Ljava/util/regex/Pattern;

.field private static final sTypeFaceWeightMapForProportional:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v14, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "^[0-9]*[.]?[0-9]*%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->PERCENT_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^[0-9]{1,2}c$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->CELL_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^([0-9.]+)t$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_T_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^([0-9.]+)ms$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_MS_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^([0-9.]+)s$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_SEC_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^([0-9]+):([0-9]+):([0-9.]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_TIME_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    const-string/jumbo v1, "<%NF_DEFAULT_TEXT_STYLE%>"

    const-string/jumbo v2, "FFFFFF"

    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getDefaultOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v6

    sget-object v7, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->defaultType:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Regular:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-object v4, v3

    move-object v5, v3

    move-object v11, v3

    move-object v12, v3

    move-object v13, v3

    invoke-direct/range {v0 .. v13}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->DEFAULT_DEVICE_TEXT_STYLE_FOR_MONOSPACE:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    const-string/jumbo v1, "<%NF_DEFAULT_TEXT_STYLE%>"

    const-string/jumbo v2, "FFFFFF"

    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getDefaultOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v6

    sget-object v7, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->monospace:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Medium:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-object v4, v3

    move-object v5, v3

    move-object v11, v3

    move-object v12, v3

    move-object v13, v3

    invoke-direct/range {v0 .. v13}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->DEFAULT_DEVICE_TEXT_STYLE_FOR_PROPORTIONAL:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->sTypeFaceWeightMapForProportional:Ljava/util/Map;

    invoke-static {}, Lcom/netflix/mediaclient/util/SubtitleUtils;->initTypeFaceMap()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustIfIntersectByMovingFirstUp(Landroid/view/View;Landroid/view/View;)I
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "nf_subtitles_render"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Block 1  left: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", top: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", right: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bottom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "nf_subtitles_render"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Block 2  left: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", top: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", right: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bottom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v3, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "===> No intersection found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "nf_subtitles_render"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "===> intersection found, move by: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    if-gez v4, :cond_3

    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v5, "We hit top. Set top to 0"

    invoke-static {v1, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v0, v4

    const/4 v1, -0x1

    :cond_3
    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v0

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "After move: Block 1 left: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", right: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", bottom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v4, v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public static adjustIfIntersectByMovingSecondDown(Landroid/view/View;Landroid/view/View;I)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->getRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->getRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "nf_subtitles_render"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Block 1  left: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", top: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", right: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bottom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "nf_subtitles_render"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Block 2  left: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", top: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", right: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bottom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "===> No intersection found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "nf_subtitles_render"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "===> intersection found, move by: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    if-le v4, p2, :cond_3

    const-string/jumbo v5, "nf_subtitles_render"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "We hit bottom. Set bottom to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sub-int/2addr v0, v4

    add-int/2addr v0, p2

    :cond_3
    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "After move: Block 2 left: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", right: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", bottom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v4, v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v2

    goto/16 :goto_0
.end method

.method private static applyEdge(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)V
    .locals 5

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Apply edge"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->isOutlineRequired()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "No outline to be applied"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getEdgeColor(Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Edge color unresolved, not setting anything!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getShadow()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Shadow is null, not setting anything!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sets text shadow with color "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", radius "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->radius:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", dx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->dx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", dy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->dy:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v2, v1, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->radius:F

    iget v3, v1, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->dx:I

    int-to-float v3, v3

    iget v1, v1, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->dy:I

    int-to-float v1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public static applyOutline(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "apply outline parameters are null, do nothing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->applyStroke(Lcom/netflix/mediaclient/android/widget/StrokeTextView;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->applyEdge(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "No outline!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static applyStroke(Lcom/netflix/mediaclient/android/widget/StrokeTextView;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)V
    .locals 2

    invoke-static {p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getEdgeColor(Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getOutlineWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getOutlineWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->setStrokeWidth(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->setStrokeColor(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static applyStyle(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;F)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "apply style parameters are null, do nothing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Apply style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getFontSizeMultiplier(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)F

    move-result v0

    mul-float v1, p2, v0

    invoke-virtual {p0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Text size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", scale "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {p1, v5}, Lcom/netflix/mediaclient/util/SubtitleUtils;->toTypeFace(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Z)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->toTypeFaceStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->setLetterSpacing(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    invoke-static {p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getTextColor(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sets text color to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getBackgroundColor(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sets text view background color to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_2
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->applyOutline(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Text color unresolved, not setting anything!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Background color unresolved, not setting anything!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static createRegionForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Display area can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getFirstLength()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getSecondLength()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Display area: w "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", h "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Region w/h "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Extent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Origin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getFirstLength()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getSecondLength()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Extent h is too big!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_3

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Extent w is too big!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Rectangle, left: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", top: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", right: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", bottom: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v2

    :cond_5
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v3, "Extent is null!"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Origin is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static createText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-le p1, v0, :cond_0

    :goto_0
    if-ge v0, p1, :cond_0

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpLog([Lcom/netflix/mediaclient/media/Subtitle;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Subtitles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "Subtitles are null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static getBackgroundColor(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getBackgroundOpacity()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultFontWeight(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->isMonospace(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Regular:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Medium:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    goto :goto_0
.end method

.method private static getDefaultSpacing(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)F
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->isProportional(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x3c83126f    # 0.016f

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDefaultTextStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->isMonospace(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->DEFAULT_DEVICE_TEXT_STYLE_FOR_MONOSPACE:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->DEFAULT_DEVICE_TEXT_STYLE_FOR_PROPORTIONAL:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    goto :goto_0
.end method

.method public static getDeviceDefaultTextStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 2

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "getDeviceDefaultTextStyle:: user and region defaults are null: proportional"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getDefaultTextStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "getDeviceDefaultTextStyle:: user font family is null, depending on region"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getDefaultTextStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "getDeviceDefaultTextStyle:: user font family is NOT null, deciding based on it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getDefaultTextStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEdgeColor(Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getEdgeColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getFontSizeMultiplier(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static getMarginsForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Display area can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;

    invoke-direct {v2}, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getFirstLength()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getSecondLength()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Display area: w "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", h "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Region w/h "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Extent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Origin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getFirstLength()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getSecondLength()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    iput v1, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v3, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    sub-int/2addr v1, v3

    sub-int v0, v1, v0

    iput v0, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->bottom:I

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Margins, left: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", top: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", right: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->right:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", bottom: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2

    :cond_3
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v3, "Extent is null!"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Origin is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 3

    invoke-static {p0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->intersection(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v2, 0x0

    iput v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static getSubtitleImageMaxHeight(Landroid/content/Context;)I
    .locals 6

    const/16 v0, 0x438

    const/16 v1, 0x2d0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Display w/h: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v4, :cond_1

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    if-lt v2, v0, :cond_2

    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Using 1080P"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_1
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_2
    if-lt v2, v1, :cond_3

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Using 720P"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Using 480P"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e0

    goto :goto_1
.end method

.method public static getSubtitleImageMaxWidth(Landroid/content/Context;)I
    .locals 6

    const/16 v0, 0x780

    const/16 v1, 0x500

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Display w/h: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v4, :cond_1

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    if-lt v2, v0, :cond_2

    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Using 1080P"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_1
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_2
    if-lt v2, v1, :cond_3

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Using 720P"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Using 480P"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x355

    goto :goto_1
.end method

.method public static getTextColor(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOpacity()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static getTypefaceByWeightForSansSerif(Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;)Landroid/graphics/Typeface;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "No font weight, use sans serif"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->sTypeFaceWeightMapForProportional:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Typeface for proportional font not found for font weight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found mapping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWindowColor(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowOpacity()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static initTypeFaceMap()V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Init typefaces "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->values()[Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_c

    aget-object v5, v3, v1

    const/4 v0, 0x0

    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Thin:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v6, 0x10

    if-lt v0, v6, :cond_1

    const-string/jumbo v0, "sans-serif-thin"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_0
    :goto_1
    if-nez v0, :cond_b

    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No typeface for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_2
    sget-object v6, Lcom/netflix/mediaclient/util/SubtitleUtils;->sTypeFaceWeightMapForProportional:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Light:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_3

    const-string/jumbo v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Book:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_4

    const-string/jumbo v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Regular:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_5

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Medium:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_7

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v6, 0x15

    if-lt v0, v6, :cond_6

    const-string/jumbo v0, "sans-serif-medium"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_6
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_7
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->SemiBold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_8

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_8
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Bold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_9

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Bold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_a

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->ExtraBlack:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v6, "nf_subtitles_render"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Typeface for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    return-void
.end method

.method public static intersection(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public static isNextNodeInSameLine(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;",
            ">;I)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getLineBreaks()I

    move-result v0

    if-ge v0, v1, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static isPositionDefinedInBlock(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "region or block is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v3, "isPositionDefinedInBlock start"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getRegion()Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "isPositionDefinedInBlock no region, no need for wrapper"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_3

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "isPositionDefinedInBlock no text blocks!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "isPositionDefinedInBlock p missing"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "nf_subtitles_render"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPositionDefinedInBlock extent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "nf_subtitles_render"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPositionDefinedInBlock origin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "isPositionDefinedInBlock using block extent and origin overrides, return true"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "isPositionDefinedInBlock using region defaults for extent and origin, return false"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0
.end method

.method public static isStrokeTextViewRequired(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->isStrokeTextRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "impl"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "order"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->newInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineTextSubtitle;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTextSubtitle;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Implementation does not support restore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseMargin(Ljava/lang/String;I)Ljava/lang/Float;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/util/SubtitleUtils;->PERCENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/util/SubtitleUtils;->CELL_PATTERN:Ljava/util/regex/Pattern;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "c"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseTime(Ljava/lang/String;D)J
    .locals 9

    const-wide/16 v0, -0x1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v3, "dfxp-badtime: Time string us empty! Invalid time"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_T_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "t"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    move-wide v0, v2

    goto :goto_0

    :cond_2
    long-to-double v0, v2

    mul-double/2addr v0, p1

    double-to-long v0, v0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_MS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ms"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_SEC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "s"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_5

    move-wide v0, v2

    goto :goto_0

    :cond_5
    long-to-double v0, v2

    mul-double/2addr v0, p1

    double-to-long v0, v0

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dfxp-badtime: Tick time pattern matched, but we do not have 3 groups! This should NOT happen! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/SubtitleUtils;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0xe10

    mul-long/2addr v0, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dfxp-badtime: Unknown format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static safeParseLong(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "nf_subtitles_render"

    const-string/jumbo v4, "Parsing failed"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAlignmentToRegion(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "region or block is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getRegion()Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v2

    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->center:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Horizontal alignment from region"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v0

    move-object v1, v0

    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->bottom:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v3, "Vertical alignment from region"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v0

    move-object v2, v0

    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v3, "Horizontal alignment overide from p!"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v3, "Vertical alignment overide from p!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v2

    :cond_3
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->toGravity(Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void

    :cond_4
    move-object v2, v0

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public static setLetterSpacing(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getDefaultSpacing(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_0
.end method

.method public static toGravity(Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;)I
    .locals 5

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "toGravity default CENTER"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toGravity vert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->getGravity()I

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toGravity hor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->getGravity()I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->getGravity()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->getGravity()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->getGravity()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->getGravity()I

    move-result v2

    or-int/2addr v0, v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toGravity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", vert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", plus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static toTypeFace(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Z)Landroid/graphics/Typeface;
    .locals 2

    if-nez p0, :cond_1

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "No styles, use san serif typeface"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->isSansSerif(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Apply sans serif"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontWeight()Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getTypefaceByWeightForSansSerif(Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->toTypeFaceStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Apply non sans serif"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1
.end method

.method public static toTypeFaceStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontWeight()Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Bold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontWeight()Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->getValue()I

    move-result v2

    if-gt v1, v2, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getItalic()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "toTypeFaceStyle:: BOLD ITALIC"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "toTypeFaceStyle:: BOLD"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getItalic()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "toTypeFaceStyle:: ITALIC"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    goto :goto_0
.end method
