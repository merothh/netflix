.class public final Lo/Tp$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Tp;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Tp;


# direct methods
.method constructor <init>(Lo/Tp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lo/Tp$ActionBar;->a:Lo/Tp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 1

    .line 42
    iget-object p1, p0, Lo/Tp$ActionBar;->a:Lo/Tp;

    move-object v0, p1

    check-cast v0, Lo/MessagePdu;

    .line 43
    invoke-static {p1}, Lo/Tp;->b(Lo/Tp;)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 47
    iget-object p1, p0, Lo/Tp$ActionBar;->a:Lo/Tp;

    move-object v0, p1

    check-cast v0, Lo/MessagePdu;

    .line 48
    invoke-static {p1}, Lo/Tp;->b(Lo/Tp;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    .line 52
    iget-object p1, p0, Lo/Tp$ActionBar;->a:Lo/Tp;

    move-object v0, p1

    check-cast v0, Lo/MessagePdu;

    .line 53
    invoke-static {p1}, Lo/Tp;->b(Lo/Tp;)V

    return-void
.end method
