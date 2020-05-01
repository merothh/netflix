.class public final Lo/b$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ViewAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/b;->b(Z)Lo/ViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Lo/ViewAnimator;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lo/b$Activity;->d(Ljava/lang/String;)Lo/b$Activity;

    move-result-object p1

    check-cast p1, Lo/ViewAnimator;

    return-object p1
.end method

.method public synthetic a()Lo/YearPickerView;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lo/b$Activity;->b()Lo/b$Activity$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/YearPickerView;

    return-object v0
.end method

.method public synthetic b(Ljava/util/Map;)Lo/ViewAnimator;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lo/b$Activity;->d(Ljava/util/Map;)Lo/b$Activity;

    move-result-object p1

    check-cast p1, Lo/ViewAnimator;

    return-object p1
.end method

.method public b()Lo/b$Activity$TaskDescription;
    .locals 1

    .line 36
    new-instance v0, Lo/b$Activity$TaskDescription;

    invoke-direct {v0}, Lo/b$Activity$TaskDescription;-><init>()V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lo/b$Activity;
    .locals 1

    const-string v0, "fetchStatus"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Ljava/util/Map;)Lo/b$Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/b$Activity;"
        }
    .end annotation

    const-string v0, "additionalArgs"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
