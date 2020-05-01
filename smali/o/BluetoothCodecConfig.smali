.class public Lo/BluetoothCodecConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BluetoothCodecConfig$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final b:Lo/FeatureGroupInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FeatureGroupInfo<",
            "Lo/BluetoothCodecConfig$ActionBar<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0xfa

    .line 27
    invoke-direct {p0, v0, v1}, Lo/BluetoothCodecConfig;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lo/BluetoothCodecConfig$3;

    invoke-direct {v0, p0, p1, p2}, Lo/BluetoothCodecConfig$3;-><init>(Lo/BluetoothCodecConfig;J)V

    iput-object v0, p0, Lo/BluetoothCodecConfig;->b:Lo/FeatureGroupInfo;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 49
    invoke-static {p1, p2, p3}, Lo/BluetoothCodecConfig$ActionBar;->a(Ljava/lang/Object;II)Lo/BluetoothCodecConfig$ActionBar;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lo/BluetoothCodecConfig;->b:Lo/FeatureGroupInfo;

    invoke-virtual {p2, p1}, Lo/FeatureGroupInfo;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 51
    invoke-virtual {p1}, Lo/BluetoothCodecConfig$ActionBar;->d()V

    return-object p2
.end method

.method public e(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 64
    invoke-static {p1, p2, p3}, Lo/BluetoothCodecConfig$ActionBar;->a(Ljava/lang/Object;II)Lo/BluetoothCodecConfig$ActionBar;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lo/BluetoothCodecConfig;->b:Lo/FeatureGroupInfo;

    invoke-virtual {p2, p1, p4}, Lo/FeatureGroupInfo;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
