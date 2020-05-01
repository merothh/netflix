.class final Lo/ScaleGestureDetector$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassFormatError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ScaleGestureDetector;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ClassFormatError<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/ScaleGestureDetector;


# direct methods
.method constructor <init>(Lo/ScaleGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lo/ScaleGestureDetector$TaskDescription;->c:Lo/ScaleGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 76
    iget-object p1, p0, Lo/ScaleGestureDetector$TaskDescription;->c:Lo/ScaleGestureDetector;

    invoke-static {p1}, Lo/ScaleGestureDetector;->e(Lo/ScaleGestureDetector;)Lo/RoundScrollbarRenderer;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lo/ScaleGestureDetector$TaskDescription;->c:Lo/ScaleGestureDetector;

    invoke-static {v1}, Lo/ScaleGestureDetector;->b(Lo/ScaleGestureDetector;)Ljava/util/List;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lo/ScaleGestureDetector$TaskDescription;->c:Lo/ScaleGestureDetector;

    invoke-static {v2}, Lo/ScaleGestureDetector;->e(Lo/ScaleGestureDetector;)Lo/RoundScrollbarRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lo/RoundScrollbarRenderer;->A()Lo/Cloneable;

    move-result-object v2

    invoke-virtual {v2}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1, v2}, Lo/RoundScrollbarRenderer;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ScaleGestureDetector;->c(Lo/ScaleGestureDetector;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/ScaleGestureDetector$TaskDescription;->c(Ljava/lang/String;)V

    return-void
.end method
