.class public Lo/tH$Fragment;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fragment"
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZI)V
    .locals 0

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput p2, p0, Lo/tH$Fragment;->b:I

    .line 479
    iput-boolean p3, p0, Lo/tH$Fragment;->a:Z

    .line 480
    iput-object p1, p0, Lo/tH$Fragment;->e:Ljava/lang/String;

    .line 481
    iput p4, p0, Lo/tH$Fragment;->c:I

    return-void
.end method
