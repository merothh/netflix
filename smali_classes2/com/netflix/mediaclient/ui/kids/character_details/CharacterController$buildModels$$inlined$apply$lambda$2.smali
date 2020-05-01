.class final Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alS;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->buildModels(Lo/IJ$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alS<",
        "Lo/AU;",
        "Lo/Bc;",
        "Lo/AR;",
        "Ljava/util/List<",
        "+",
        "Lo/AR;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;->b:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lo/AU;

    check-cast p2, Lo/Bc;

    check-cast p3, Lo/AR;

    check-cast p4, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;->c(Lo/AU;Lo/Bc;Lo/AR;Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public final c(Lo/AU;Lo/Bc;Lo/AR;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AU;",
            "Lo/Bc;",
            "Lo/AR;",
            "Ljava/util/List<",
            "+",
            "Lo/AR;",
            ">;)V"
        }
    .end annotation

    const-string v0, "characterDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDetails"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "recommendedVideo"

    invoke-static {p3, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "relatedVideos"

    invoke-static {p4, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-interface {p3}, Lo/AR;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p2

    sget-object p3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq p2, p3, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_4

    .line 110
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;->b:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    .line 111
    invoke-static {}, Lo/adq;->d()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 113
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;->b:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x6

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    goto :goto_0

    :cond_2
    const/4 p3, 0x3

    .line 110
    :goto_0
    invoke-static {p2, p3}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->access$setGridSize(Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;I)V

    .line 118
    new-instance p2, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object p3, Lcom/netflix/cl/model/AppView;->characterDetails:Lcom/netflix/cl/model/AppView;

    invoke-direct {p2, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    .line 119
    invoke-interface {p1}, Lo/AU;->f()Lo/Bv;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 118
    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bv;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    .line 121
    check-cast p4, Ljava/lang/Iterable;

    const/4 p2, 0x0

    .line 223
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    add-int/lit8 v0, p2, 0x1

    if-gez p2, :cond_3

    invoke-static {}, Lo/akz;->c()V

    :cond_3
    check-cast p4, Lo/AR;

    .line 122
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;->b:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    .line 224
    new-instance v2, Lo/FZ;

    invoke-direct {v2}, Lo/FZ;-><init>()V

    .line 228
    move-object v3, v2

    check-cast v3, Lo/FX;

    .line 123
    invoke-interface {p4}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lo/FX;->a(Ljava/lang/CharSequence;)Lo/FX;

    .line 124
    invoke-interface {p4}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lo/FX;->c(Ljava/lang/String;)Lo/FX;

    .line 125
    invoke-interface {p4}, Lo/AR;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lo/FX;->a_(Ljava/lang/String;)Lo/FX;

    .line 126
    invoke-interface {p4}, Lo/AR;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lo/FX;->a(Ljava/lang/String;)Lo/FX;

    .line 127
    new-instance v4, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2$2;

    invoke-direct {v4, p4, p2, p0, p1}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2$2;-><init>(Lo/AR;ILcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-interface {v3, v4}, Lo/FX;->e(Landroid/view/View$OnClickListener;)Lo/FX;

    .line 227
    invoke-virtual {v2, v1}, Lo/FZ;->a(Lo/OfPrimitive;)V

    move p2, v0

    goto :goto_1

    :cond_4
    return-void

    .line 119
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
