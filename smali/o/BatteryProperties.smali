.class public final Lo/BatteryProperties;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lo/UnicodeScript;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UnicodeScript;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lo/BatteryProperties$Activity;

    invoke-direct {v0, p0}, Lo/BatteryProperties$Activity;-><init>(Lo/UnicodeScript;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    const-string v0, "Observable.create { emit\u2026       }\n        })\n    }"

    invoke-static {p0, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
