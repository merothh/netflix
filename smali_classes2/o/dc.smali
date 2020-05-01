.class public interface abstract Lo/dc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dc$StateListAnimator;,
        Lo/dc$ActionBar;,
        Lo/dc$TaskDescription;
    }
.end annotation


# static fields
.field public static final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 14
    fill-array-data v0, :array_0

    sput-object v0, Lo/dc;->g:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xat
        0x7at
        0x0t
        0x6ct
        0x38t
        0x2bt
    .end array-data
.end method


# virtual methods
.method public abstract a(Lo/dc$TaskDescription;)V
.end method

.method public abstract a(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B
.end method

.method public abstract b(Lo/dc$ActionBar;)Lo/dc$TaskDescription;
.end method

.method public abstract c(Lo/ahD;[BLo/dc$ActionBar;Lo/dc$ActionBar;)Lo/dc$TaskDescription;
.end method

.method public abstract c(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B
.end method

.method public abstract d(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B)[B
.end method

.method public abstract e(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)Z
.end method

.method public abstract f()Lo/ahD;
.end method

.method public abstract g()V
.end method

.method public abstract j()V
.end method

.method public abstract m()Z
.end method

.method public abstract x_()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
.end method

.method public abstract y_()V
.end method
