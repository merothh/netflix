.class public Lo/tH$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final g:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II[I)V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lo/tH$ActionBar;->c:Ljava/lang/String;

    .line 443
    iput p2, p0, Lo/tH$ActionBar;->a:I

    .line 444
    iput-object p3, p0, Lo/tH$ActionBar;->b:Ljava/lang/String;

    .line 445
    iput p4, p0, Lo/tH$ActionBar;->d:I

    .line 446
    iput p5, p0, Lo/tH$ActionBar;->e:I

    .line 447
    iput-object p6, p0, Lo/tH$ActionBar;->g:[I

    return-void
.end method
