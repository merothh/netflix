.class public final Lo/UsbConfiguration$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UsbConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Application"
.end annotation


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final e:Lo/UsbConfiguration$TaskDescription;


# direct methods
.method public constructor <init>(Lo/UsbConfiguration$TaskDescription;Ljava/io/InputStream;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lo/UsbConfiguration$Application;->e:Lo/UsbConfiguration$TaskDescription;

    .line 142
    iput-object p2, p0, Lo/UsbConfiguration$Application;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 147
    iget-object v0, p0, Lo/UsbConfiguration$Application;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
