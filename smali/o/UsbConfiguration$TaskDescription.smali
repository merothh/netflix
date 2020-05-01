.class public Lo/UsbConfiguration$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UsbConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lo/UsbConfiguration$TaskDescription;->a:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lo/UsbConfiguration$TaskDescription;->c:Ljava/lang/String;

    return-void
.end method
