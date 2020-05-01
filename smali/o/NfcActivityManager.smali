.class public final Lo/NfcActivityManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NfcActivityManager$Activity;,
        Lo/NfcActivityManager$ActionBar;
    }
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lo/NfcActivityManager;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lo/NfcActivityManager;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lo/NfcActivityManager$Activity;
    .locals 4

    .line 34
    iget-object v0, p0, Lo/NfcActivityManager;->c:Ljava/lang/String;

    .line 35
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 39
    new-instance v1, Lo/NfcActivityManager$Activity;

    .line 41
    iget v2, p0, Lo/NfcActivityManager;->b:I

    .line 42
    iget v3, p0, Lo/NfcActivityManager;->d:I

    .line 39
    invoke-direct {v1, v0, v2, v3}, Lo/NfcActivityManager$Activity;-><init>(Ljava/lang/String;II)V

    return-object v1

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
