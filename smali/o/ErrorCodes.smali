.class public interface abstract Lo/ErrorCodes;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ErrorCodes$Application;,
        Lo/ErrorCodes$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/ErrorCodes$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/ErrorCodes$TaskDescription;->d:Lo/ErrorCodes$TaskDescription;

    sput-object v0, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    return-void
.end method


# virtual methods
.method public abstract a(Lo/NfcEvent$Activity;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/NfcEvent$Activity;",
            ")",
            "Lio/reactivex/Single<",
            "Lo/NfcEvent$StateListAnimator;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lo/NfcActivityManager$Activity;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/NfcActivityManager$Activity;",
            ")",
            "Lio/reactivex/Single<",
            "Lo/NfcActivityManager$ActionBar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()Z
.end method

.method public abstract e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
            ">;"
        }
    .end annotation
.end method
