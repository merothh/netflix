.class Lo/Jw$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jw;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Jw;


# direct methods
.method constructor <init>(Lo/Jw;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lo/Jw$13;->e:Lo/Jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 332
    iget-object p1, p0, Lo/Jw$13;->e:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->i(Lo/Jw;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 333
    iget-object p1, p0, Lo/Jw$13;->e:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->j(Lo/Jw;)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Lo/Jw$13;->e:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->f(Lo/Jw;)V

    :goto_0
    return-void
.end method
