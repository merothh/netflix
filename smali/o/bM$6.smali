.class Lo/bM$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bV$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bM;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/bM;


# direct methods
.method constructor <init>(Lo/bM;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lo/bM$6;->d:Lo/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/bV;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 812
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 813
    iget-object p1, p0, Lo/bM$6;->d:Lo/bM;

    invoke-static {p1}, Lo/bM;->d(Lo/bM;)V

    :cond_0
    return-void
.end method
