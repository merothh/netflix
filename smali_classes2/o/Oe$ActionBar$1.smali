.class final Lo/Oe$ActionBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Oe$ActionBar;->b(Ljava/lang/Boolean;)Lio/reactivex/Observable;
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
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Oe$ActionBar;


# direct methods
.method constructor <init>(Lo/Oe$ActionBar;)V
    .locals 0

    iput-object p1, p0, Lo/Oe$ActionBar$1;->c:Lo/Oe$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/Ob;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lo/Oi;

    iget-object v1, p0, Lo/Oe$ActionBar$1;->c:Lo/Oe$ActionBar;

    iget-object v1, v1, Lo/Oe$ActionBar;->e:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lo/Oi;-><init>(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
