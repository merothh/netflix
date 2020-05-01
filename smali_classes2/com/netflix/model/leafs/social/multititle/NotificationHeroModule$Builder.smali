.class public abstract Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract actions(Ljava/util/List;)Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;",
            ">;)",
            "Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule$Builder;"
        }
    .end annotation
.end method

.method public abstract bodyCopy(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule$Builder;
.end method

.method public abstract build()Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;
.end method

.method public abstract heroImage(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule$Builder;
.end method

.method public abstract heroImageWebp(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule$Builder;
.end method

.method public abstract layout(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule$Builder;
.end method

.method public abstract titleId(I)Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule$Builder;
.end method

.method public abstract videoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule$Builder;
.end method
