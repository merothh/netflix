.class Lo/AssistContent$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Closeable$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AssistContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/AssistContent;


# direct methods
.method constructor <init>(Lo/AssistContent;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/AssistContent$4;->c:Lo/AssistContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lo/AssistContent$4;->c:Lo/AssistContent;

    invoke-virtual {v0, p1}, Lo/AssistContent;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
