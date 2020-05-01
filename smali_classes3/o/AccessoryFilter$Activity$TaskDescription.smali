.class final Lo/AccessoryFilter$Activity$TaskDescription;
.super Lo/UsbConfiguration$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AccessoryFilter$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:I

.field final synthetic c:Lo/AccessoryFilter$Activity;


# direct methods
.method private constructor <init>(Lo/AccessoryFilter$Activity;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lo/AccessoryFilter$Activity$TaskDescription;->c:Lo/AccessoryFilter$Activity;

    invoke-direct {p0}, Lo/UsbConfiguration$Activity;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/AccessoryFilter$Activity;Lo/AccessoryFilter$5;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lo/AccessoryFilter$Activity$TaskDescription;-><init>(Lo/AccessoryFilter$Activity;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 131
    iget v0, p0, Lo/AccessoryFilter$Activity$TaskDescription;->a:I

    iget-object v1, p0, Lo/AccessoryFilter$Activity$TaskDescription;->c:Lo/AccessoryFilter$Activity;

    invoke-static {v1}, Lo/AccessoryFilter$Activity;->e(Lo/AccessoryFilter$Activity;)[Lo/AccessoryFilter$ActionBar;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Lo/UsbConfiguration$Application;
    .locals 3

    .line 136
    iget-object v0, p0, Lo/AccessoryFilter$Activity$TaskDescription;->c:Lo/AccessoryFilter$Activity;

    invoke-static {v0}, Lo/AccessoryFilter$Activity;->e(Lo/AccessoryFilter$Activity;)[Lo/AccessoryFilter$ActionBar;

    move-result-object v0

    iget v1, p0, Lo/AccessoryFilter$Activity$TaskDescription;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/AccessoryFilter$Activity$TaskDescription;->a:I

    aget-object v0, v0, v1

    .line 137
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, v0, Lo/AccessoryFilter$ActionBar;->e:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 139
    :try_start_0
    new-instance v2, Lo/UsbConfiguration$Application;

    invoke-direct {v2, v0, v1}, Lo/UsbConfiguration$Application;-><init>(Lo/UsbConfiguration$TaskDescription;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    .line 144
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 146
    throw v0
.end method
