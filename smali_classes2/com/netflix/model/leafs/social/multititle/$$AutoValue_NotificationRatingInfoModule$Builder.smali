.class final Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;
.super Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;",
            ">;"
        }
    .end annotation
.end field

.field private bodyCopy:Ljava/lang/String;

.field private bodyCopyConfirmationThumbsDown:Ljava/lang/String;

.field private bodyCopyConfirmationThumbsUp:Ljava/lang/String;

.field private boxshot:Ljava/lang/String;

.field private boxshotWebp:Ljava/lang/String;

.field private layout:Ljava/lang/String;

.field private titleId:Ljava/lang/Integer;

.field private videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;-><init>()V

    .line 199
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->layout()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->layout:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->bodyCopy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->bodyCopy:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->bodyCopyConfirmationThumbsUp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->bodyCopyConfirmationThumbsUp:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->bodyCopyConfirmationThumbsDown()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->bodyCopyConfirmationThumbsDown:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->boxshot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->boxshot:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->boxshotWebp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->boxshotWebp:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->actions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->actions:Ljava/util/List;

    .line 206
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->titleId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->titleId:Ljava/lang/Integer;

    .line 207
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;-><init>(Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;)V

    return-void
.end method


# virtual methods
.method public actions(Ljava/util/List;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;",
            ">;)",
            "Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 262
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->actions:Ljava/util/List;

    return-object p0

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null actions"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bodyCopy(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 222
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->bodyCopy:Ljava/lang/String;

    return-object p0

    .line 220
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null bodyCopy"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bodyCopyConfirmationThumbsDown(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 238
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->bodyCopyConfirmationThumbsDown:Ljava/lang/String;

    return-object p0

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null bodyCopyConfirmationThumbsDown"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bodyCopyConfirmationThumbsUp(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 230
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->bodyCopyConfirmationThumbsUp:Ljava/lang/String;

    return-object p0

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null bodyCopyConfirmationThumbsUp"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public boxshot(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 246
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->boxshot:Ljava/lang/String;

    return-object p0

    .line 244
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null boxshot"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public boxshotWebp(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 254
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->boxshotWebp:Ljava/lang/String;

    return-object p0

    .line 252
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null boxshotWebp"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;
    .locals 12

    .line 281
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->layout:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->bodyCopy:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bodyCopy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->bodyCopyConfirmationThumbsUp:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bodyCopyConfirmationThumbsUp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->bodyCopyConfirmationThumbsDown:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bodyCopyConfirmationThumbsDown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->boxshot:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " boxshot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->boxshotWebp:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " boxshotWebp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    :cond_5
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->actions:Ljava/util/List;

    if-nez v0, :cond_6

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " actions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    :cond_6
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->titleId:Ljava/lang/Integer;

    if-nez v0, :cond_7

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " titleId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    :cond_7
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-nez v0, :cond_8

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " videoType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 311
    new-instance v0, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingInfoModule;

    iget-object v3, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->layout:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->bodyCopy:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->bodyCopyConfirmationThumbsUp:Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->bodyCopyConfirmationThumbsDown:Ljava/lang/String;

    iget-object v7, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->boxshot:Ljava/lang/String;

    iget-object v8, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->boxshotWebp:Ljava/lang/String;

    iget-object v9, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->actions:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->titleId:Ljava/lang/Integer;

    .line 319
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingInfoModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    return-object v0

    .line 309
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public layout(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 214
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->layout:Ljava/lang/String;

    return-object p0

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null layout"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public titleId(I)Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
    .locals 0

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->titleId:Ljava/lang/Integer;

    return-object p0
.end method

.method public videoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 275
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationRatingInfoModule$Builder;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object p0

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null videoType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
