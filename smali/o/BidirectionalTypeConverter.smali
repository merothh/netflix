.class public Lo/BidirectionalTypeConverter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:F

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/BidirectionalTypeConverter;->b:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lo/BidirectionalTypeConverter;->c:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lo/BidirectionalTypeConverter;->e:Ljava/lang/String;

    .line 19
    iput p4, p0, Lo/BidirectionalTypeConverter;->a:F

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/BidirectionalTypeConverter;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/BidirectionalTypeConverter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/BidirectionalTypeConverter;->b:Ljava/lang/String;

    return-object v0
.end method
