.class Lo/DH$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/DH;


# direct methods
.method constructor <init>(Lo/DH;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lo/DH$5;->e:Lo/DH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lo/DH$5;->e:Lo/DH;

    iget-object p1, p1, Lo/DH;->o:Lo/AS;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/DH$5;->e:Lo/DH;

    iget-object p1, p1, Lo/DH;->o:Lo/AS;

    invoke-interface {p1}, Lo/AS;->ah()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lo/DH$5;->e:Lo/DH;

    iget-object v0, p1, Lo/DH;->o:Lo/AS;

    invoke-virtual {p1, v0}, Lo/DH;->d(Lo/AS;)V

    :cond_0
    return-void
.end method
