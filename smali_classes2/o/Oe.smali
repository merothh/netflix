.class public final Lo/Oe;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final d(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/Ob;",
            ">;"
        }
    .end annotation

    const-string v0, "videoId"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    invoke-virtual {v0}, Lo/JM;->j()Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    new-instance v1, Lo/Oe$ActionBar;

    invoke-direct {v1, p0}, Lo/Oe$ActionBar;-><init>(Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    const-string v0, "UserAgentRepository().is\u2026)\n            }\n        }"

    invoke-static {p0, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
