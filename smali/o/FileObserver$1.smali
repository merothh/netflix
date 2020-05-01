.class final Lo/FileObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FileObserver;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/FileObserver;


# direct methods
.method constructor <init>(Lo/FileObserver;)V
    .locals 0

    iput-object p1, p0, Lo/FileObserver$1;->c:Lo/FileObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object p1, p0, Lo/FileObserver$1;->c:Lo/FileObserver;

    sget-object v0, Lo/CommonClock$Fragment;->e:Lo/CommonClock$Fragment;

    invoke-virtual {p1, v0}, Lo/FileObserver;->e(Ljava/lang/Object;)V

    return-void
.end method
