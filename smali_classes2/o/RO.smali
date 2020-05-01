.class public final Lo/RO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/ErrorCodes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo/ErrorCodes;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/RO;->a:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lo/RO;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static b(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lo/RO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo/ErrorCodes;",
            ">;)",
            "Lo/RO;"
        }
    .end annotation

    .line 31
    new-instance v0, Lo/RO;

    invoke-direct {v0, p0, p1}, Lo/RO;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;
    .locals 3

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    iget-object v1, p0, Lo/RO;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lo/RO;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ErrorCodes;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;-><init>(Landroid/content/Context;Lo/ErrorCodes;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/RO;->b()Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object v0

    return-object v0
.end method
