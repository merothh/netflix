.class final Lo/WV$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WV;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/WV;


# direct methods
.method constructor <init>(Lo/WV;)V
    .locals 0

    iput-object p1, p0, Lo/WV$Application;->e:Lo/WV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lo/WV$Application;->e:Lo/WV;

    sget-object v0, Lo/UU$FragmentManager;->a:Lo/UU$FragmentManager;

    invoke-virtual {p1, v0}, Lo/WV;->e(Ljava/lang/Object;)V

    return-void
.end method
