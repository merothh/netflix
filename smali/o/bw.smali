.class public interface abstract Lo/bw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bw$Activity;,
        Lo/bw$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/bw$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/bw$ActionBar;->e:Lo/bw$ActionBar;

    sput-object v0, Lo/bw;->a:Lo/bw$ActionBar;

    return-void
.end method


# virtual methods
.method public abstract d(Lio/reactivex/Observable;)Lo/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)",
            "Lo/bs;"
        }
    .end annotation
.end method
