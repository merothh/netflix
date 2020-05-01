.class final Lo/KeyphraseEnrollmentInfo$TaskDescription$TaskDescription;
.super Lo/UsbConfiguration$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KeyphraseEnrollmentInfo$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescription"
.end annotation


# instance fields
.field private b:I

.field final synthetic e:Lo/KeyphraseEnrollmentInfo$TaskDescription;


# direct methods
.method private constructor <init>(Lo/KeyphraseEnrollmentInfo$TaskDescription;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lo/KeyphraseEnrollmentInfo$TaskDescription$TaskDescription;->e:Lo/KeyphraseEnrollmentInfo$TaskDescription;

    invoke-direct {p0}, Lo/UsbConfiguration$Activity;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/KeyphraseEnrollmentInfo$TaskDescription;Lo/KeyphraseEnrollmentInfo$5;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lo/KeyphraseEnrollmentInfo$TaskDescription$TaskDescription;-><init>(Lo/KeyphraseEnrollmentInfo$TaskDescription;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 151
    iget-object v0, p0, Lo/KeyphraseEnrollmentInfo$TaskDescription$TaskDescription;->e:Lo/KeyphraseEnrollmentInfo$TaskDescription;

    invoke-virtual {v0}, Lo/KeyphraseEnrollmentInfo$TaskDescription;->b()[Lo/KeyphraseEnrollmentInfo$StateListAnimator;

    .line 152
    iget v0, p0, Lo/KeyphraseEnrollmentInfo$TaskDescription$TaskDescription;->b:I

    iget-object v1, p0, Lo/KeyphraseEnrollmentInfo$TaskDescription$TaskDescription;->e:Lo/KeyphraseEnrollmentInfo$TaskDescription;

    invoke-static {v1}, Lo/KeyphraseEnrollmentInfo$TaskDescription;->d(Lo/KeyphraseEnrollmentInfo$TaskDescription;)[Lo/KeyphraseEnrollmentInfo$StateListAnimator;

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

    .line 157
    iget-object v0, p0, Lo/KeyphraseEnrollmentInfo$TaskDescription$TaskDescription;->e:Lo/KeyphraseEnrollmentInfo$TaskDescription;

    invoke-virtual {v0}, Lo/KeyphraseEnrollmentInfo$TaskDescription;->b()[Lo/KeyphraseEnrollmentInfo$StateListAnimator;

    .line 158
    iget-object v0, p0, Lo/KeyphraseEnrollmentInfo$TaskDescription$TaskDescription;->e:Lo/KeyphraseEnrollmentInfo$TaskDescription;

    invoke-static {v0}, Lo/KeyphraseEnrollmentInfo$TaskDescription;->d(Lo/KeyphraseEnrollmentInfo$TaskDescription;)[Lo/KeyphraseEnrollmentInfo$StateListAnimator;

    move-result-object v0

    iget v1, p0, Lo/KeyphraseEnrollmentInfo$TaskDescription$TaskDescription;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/KeyphraseEnrollmentInfo$TaskDescription$TaskDescription;->b:I

    aget-object v0, v0, v1

    .line 159
    iget-object v1, p0, Lo/KeyphraseEnrollmentInfo$TaskDescription$TaskDescription;->e:Lo/KeyphraseEnrollmentInfo$TaskDescription;

    invoke-static {v1}, Lo/KeyphraseEnrollmentInfo$TaskDescription;->e(Lo/KeyphraseEnrollmentInfo$TaskDescription;)Ljava/util/zip/ZipFile;

    move-result-object v1

    iget-object v2, v0, Lo/KeyphraseEnrollmentInfo$StateListAnimator;->d:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 161
    :try_start_0
    new-instance v2, Lo/UsbConfiguration$Application;

    invoke-direct {v2, v0, v1}, Lo/UsbConfiguration$Application;-><init>(Lo/UsbConfiguration$TaskDescription;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 168
    :cond_0
    throw v0
.end method
