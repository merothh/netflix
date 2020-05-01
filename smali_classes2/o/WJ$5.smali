.class final Lo/WJ$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WJ;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/WJ;


# direct methods
.method constructor <init>(Lo/WJ;)V
    .locals 0

    iput-object p1, p0, Lo/WJ$5;->a:Lo/WJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 21
    iget-object p1, p0, Lo/WJ$5;->a:Lo/WJ;

    sget-object v0, Lo/UU$ActionBar;->d:Lo/UU$ActionBar;

    invoke-virtual {p1, v0}, Lo/WJ;->e(Ljava/lang/Object;)V

    return-void
.end method
