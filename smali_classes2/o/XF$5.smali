.class final Lo/XF$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/XF;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/XF;


# direct methods
.method constructor <init>(Lo/XF;)V
    .locals 0

    iput-object p1, p0, Lo/XF$5;->a:Lo/XF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lo/XF$5;->a:Lo/XF;

    sget-object v0, Lo/UU$Activity;->e:Lo/UU$Activity;

    invoke-virtual {p1, v0}, Lo/XF;->e(Ljava/lang/Object;)V

    return-void
.end method
