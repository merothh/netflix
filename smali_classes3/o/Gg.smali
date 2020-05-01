.class public Lo/Gg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private final d:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Gg;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/Gg;->b:Landroid/os/Handler;

    iput-object p3, p0, Lo/Gg;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p4, p0, Lo/Gg;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lo/Gg;->a:Landroid/content/Context;

    iget-object v1, p0, Lo/Gg;->b:Landroid/os/Handler;

    iget-object v2, p0, Lo/Gg;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v3, p0, Lo/Gg;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/Runnable;)V

    return-void
.end method
