.class final Lo/ZP$TaskDescription$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZP$TaskDescription;-><init>(Lo/ZP;Landroid/view/View;)V
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
        "Lio/reactivex/functions/Consumer<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/ZP$TaskDescription;


# direct methods
.method constructor <init>(Lo/ZP$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lo/ZP$TaskDescription$4;->c:Lo/ZP$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 276
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lo/ZP$TaskDescription$4;->b(Lo/akj;)V

    return-void
.end method

.method public final b(Lo/akj;)V
    .locals 1

    .line 294
    iget-object p1, p0, Lo/ZP$TaskDescription$4;->c:Lo/ZP$TaskDescription;

    iget-object p1, p1, Lo/ZP$TaskDescription;->d:Lo/ZP;

    iget-object v0, p0, Lo/ZP$TaskDescription$4;->c:Lo/ZP$TaskDescription;

    invoke-virtual {v0}, Lo/ZP$TaskDescription;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lo/ZP;->b(Lo/ZP;I)V

    return-void
.end method
