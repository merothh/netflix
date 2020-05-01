.class Lo/Rect$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DataInput$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rect;->e(Lo/DataInput;)Lo/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Rect;


# direct methods
.method constructor <init>(Lo/Rect;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lo/Rect$5;->b:Lo/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 1

    .line 803
    iget-object p1, p0, Lo/Rect$5;->b:Lo/Rect;

    iget-object p1, p1, Lo/Rect;->d:Lo/Mode;

    iget-object v0, p0, Lo/Rect$5;->b:Lo/Rect;

    invoke-virtual {p1, v0}, Lo/Mode;->onItemVisibleChanged(Lo/Rect;)V

    return-void
.end method
