.class final Lo/Xc$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xc;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Xc;


# direct methods
.method constructor <init>(Lo/Xc;)V
    .locals 0

    iput-object p1, p0, Lo/Xc$2;->e:Lo/Xc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 30
    iget-object p1, p0, Lo/Xc$2;->e:Lo/Xc;

    sget-object v0, Lo/UU$Context;->e:Lo/UU$Context;

    invoke-virtual {p1, v0}, Lo/Xc;->e(Ljava/lang/Object;)V

    return-void
.end method
