.class final Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/OfPrimitive$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;-><init>(Landroid/os/Handler;Landroid/os/Handler;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$StateListAnimator;->b:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$StateListAnimator;->b:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->finalInterceptor$NetflixApp_release(Ljava/util/List;)V

    return-void
.end method
