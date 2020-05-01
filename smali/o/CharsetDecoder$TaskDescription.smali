.class Lo/CharsetDecoder$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CharsetDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field a:Lo/EllipticCurve;

.field b:Lo/CharsetDecoder;

.field c:Landroid/view/View;

.field d:Lo/AlgorithmParameters;

.field e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Lo/CharsetDecoder;Lo/EllipticCurve;Lo/AlgorithmParameters;)V
    .locals 0

    .line 2359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2360
    iput-object p1, p0, Lo/CharsetDecoder$TaskDescription;->c:Landroid/view/View;

    .line 2361
    iput-object p2, p0, Lo/CharsetDecoder$TaskDescription;->e:Ljava/lang/String;

    .line 2362
    iput-object p5, p0, Lo/CharsetDecoder$TaskDescription;->d:Lo/AlgorithmParameters;

    .line 2363
    iput-object p4, p0, Lo/CharsetDecoder$TaskDescription;->a:Lo/EllipticCurve;

    .line 2364
    iput-object p3, p0, Lo/CharsetDecoder$TaskDescription;->b:Lo/CharsetDecoder;

    return-void
.end method
