.class final Lo/To$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/To;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/To;


# direct methods
.method constructor <init>(Lo/To;)V
    .locals 0

    iput-object p1, p0, Lo/To$Application;->c:Lo/To;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lo/To$Application;->c:Lo/To;

    invoke-virtual {p1}, Lo/To;->e()V

    return-void
.end method
