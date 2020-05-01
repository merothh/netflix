.class final Lo/Sm$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Sm;->a(Lo/BC;I)Lio/reactivex/Observable;
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
.field final synthetic b:Lo/Sm;

.field final synthetic d:Lo/BC;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/Sm;Lo/BC;I)V
    .locals 0

    iput-object p1, p0, Lo/Sm$Activity;->b:Lo/Sm;

    iput-object p2, p0, Lo/Sm$Activity;->d:Lo/BC;

    iput p3, p0, Lo/Sm$Activity;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/Sh$TaskDescription;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    invoke-virtual {v0}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    if-eqz v0, :cond_0

    .line 28
    new-instance v1, Lo/KeyCharacteristics;

    iget-object v2, p0, Lo/Sm$Activity;->d:Lo/BC;

    invoke-interface {v2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "profile.profileGuid"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lo/Sm$Activity;->e:I

    invoke-direct {v1, v2, v3}, Lo/KeyCharacteristics;-><init>(Ljava/lang/String;I)V

    check-cast v1, Lo/SettingsValidators;

    .line 29
    new-instance v2, Lo/Sm$Activity$1;

    invoke-direct {v2, p0, v0, p1}, Lo/Sm$Activity$1;-><init>(Lo/Sm$Activity;Lo/hW;Lio/reactivex/ObservableEmitter;)V

    check-cast v2, Lo/ci;

    .line 27
    invoke-interface {v0, v1, v2}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    :cond_0
    return-void
.end method
