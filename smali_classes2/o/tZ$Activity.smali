.class public Lo/tZ$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field private final a:I

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lo/tZ$Activity;->c:I

    .line 41
    iput p2, p0, Lo/tZ$Activity;->a:I

    .line 42
    iput-object p3, p0, Lo/tZ$Activity;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/tZ$Activity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 50
    iget v0, p0, Lo/tZ$Activity;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 46
    iget v0, p0, Lo/tZ$Activity;->c:I

    return v0
.end method
