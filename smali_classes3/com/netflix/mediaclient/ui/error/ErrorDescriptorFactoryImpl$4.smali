.class Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;->c(Landroid/content/Context;Ljava/lang/Runnable;)Lo/hR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;Landroid/content/Context;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl$4;->b:Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl$4;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "AppBootErrorManager"

    const-string v1, "Start Contact us activity!"

    .line 92
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl$4;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lo/bO;->e(Landroid/content/Context;)V

    return-void
.end method
