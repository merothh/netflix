.class public Lo/aex;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lo/aex;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/aex;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lo/zJ;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 4

    .line 34
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p0, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 35
    invoke-static {p0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 36
    invoke-interface {p0}, Lo/BC;->getLanguages()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 37
    invoke-interface {p0}, Lo/BC;->getLanguages()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    const/16 v1, 0x2d

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 40
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 43
    :cond_1
    :goto_0
    invoke-interface {p1}, Lo/zJ;->k()[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 45
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    .line 47
    invoke-interface {v2}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isForcedNarrativeOrNone()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageCodeBcp47()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_3
    sget-object p0, Lo/aex;->e:Ljava/lang/String;

    const-string p1, "Cannot find subtitle corresponding to current locale"

    invoke-static {p0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
