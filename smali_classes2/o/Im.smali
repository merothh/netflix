.class public Lo/Im;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Landroid/content/Intent;

.field private final d:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Im;->d:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    iput-object p2, p0, Lo/Im;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/Im;->d:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    iget-object v1, p0, Lo/Im;->c:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->b(Lcom/netflix/mediaclient/ui/home/HomeActivity;Landroid/content/Intent;)V

    return-void
.end method
