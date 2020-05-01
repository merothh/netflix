.class public abstract Lo/IA;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected e:Lo/Iw;


# direct methods
.method public constructor <init>(Lo/Iw;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lo/IA;->e:Lo/Iw;

    return-void
.end method


# virtual methods
.method abstract c()Z
.end method

.method abstract d()Z
.end method

.method public e()Lcom/netflix/mediaclient/ui/home/HomeActivity;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/IA;->e:Lo/Iw;

    invoke-virtual {v0}, Lo/Iw;->c()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    return-object v0
.end method
