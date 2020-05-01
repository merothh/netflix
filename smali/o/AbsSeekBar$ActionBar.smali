.class final Lo/AbsSeekBar$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AbsSeekBar;->c()Z
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
.field final synthetic e:Lo/AbsSeekBar;


# direct methods
.method constructor <init>(Lo/AbsSeekBar;)V
    .locals 0

    iput-object p1, p0, Lo/AbsSeekBar$ActionBar;->e:Lo/AbsSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lo/AbsSeekBar$ActionBar;->e(Lo/akj;)V

    return-void
.end method

.method public final e(Lo/akj;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lo/AbsSeekBar$ActionBar;->e:Lo/AbsSeekBar;

    invoke-virtual {p1}, Lo/AbsSeekBar;->b()V

    return-void
.end method
