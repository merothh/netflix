.class final Lo/AccessoryFilter$ActionBar;
.super Lo/UsbConfiguration$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AccessoryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field final e:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2}, Lo/UsbConfiguration$TaskDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-object p3, p0, Lo/AccessoryFilter$ActionBar;->e:Ljava/io/File;

    return-void
.end method
