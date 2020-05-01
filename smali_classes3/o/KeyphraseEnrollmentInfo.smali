.class public Lo/KeyphraseEnrollmentInfo;
.super Lo/UsbConfiguration;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KeyphraseEnrollmentInfo$StateListAnimator;,
        Lo/KeyphraseEnrollmentInfo$TaskDescription;
    }
.end annotation


# instance fields
.field protected final a:Ljava/io/File;

.field protected final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lo/UsbConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p3, p0, Lo/KeyphraseEnrollmentInfo;->a:Ljava/io/File;

    .line 51
    iput-object p4, p0, Lo/KeyphraseEnrollmentInfo;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Lo/UsbConfiguration$ActionBar;
    .locals 1

    .line 56
    new-instance v0, Lo/KeyphraseEnrollmentInfo$TaskDescription;

    invoke-direct {v0, p0, p0}, Lo/KeyphraseEnrollmentInfo$TaskDescription;-><init>(Lo/KeyphraseEnrollmentInfo;Lo/UsbConfiguration;)V

    return-object v0
.end method
