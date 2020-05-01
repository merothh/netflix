.class public final Lo/ShellCallback;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static d(I)J
    .locals 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 65
    sget-object p0, Lcom/netflix/cl/model/ThumbRating;->UP:Lcom/netflix/cl/model/ThumbRating;

    invoke-virtual {p0}, Lcom/netflix/cl/model/ThumbRating;->getVal()I

    move-result p0

    :goto_0
    int-to-long v0, p0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 67
    sget-object p0, Lcom/netflix/cl/model/ThumbRating;->DOWN:Lcom/netflix/cl/model/ThumbRating;

    invoke-virtual {p0}, Lcom/netflix/cl/model/ThumbRating;->getVal()I

    move-result p0

    goto :goto_0

    .line 69
    :cond_1
    sget-object p0, Lcom/netflix/cl/model/ThumbRating;->UNRATED:Lcom/netflix/cl/model/ThumbRating;

    invoke-virtual {p0}, Lcom/netflix/cl/model/ThumbRating;->getVal()I

    move-result p0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    const-string v0, "THUMBS_DOWN"

    .line 44
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-string v0, "THUMBS_UP"

    .line 46
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
