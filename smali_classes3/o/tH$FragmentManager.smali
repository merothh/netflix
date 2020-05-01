.class public Lo/tH$FragmentManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentManager"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:J


# direct methods
.method public constructor <init>(ILjava/lang/String;IJ)V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput p1, p0, Lo/tH$FragmentManager;->d:I

    .line 465
    iput-object p2, p0, Lo/tH$FragmentManager;->a:Ljava/lang/String;

    .line 466
    iput p3, p0, Lo/tH$FragmentManager;->c:I

    .line 467
    iput-wide p4, p0, Lo/tH$FragmentManager;->e:J

    return-void
.end method
