.class final Lo/xu$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/xu$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lo/xu$Application;->b:Ljava/lang/String;

    .line 144
    iput p2, p0, Lo/xu$Application;->a:I

    return-void
.end method

.method static synthetic b(Lo/xu$Application;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lo/xu$Application;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lo/xu$Application;)I
    .locals 0

    .line 138
    iget p0, p0, Lo/xu$Application;->a:I

    return p0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 138
    check-cast p1, Lo/xu$Application;

    invoke-virtual {p0, p1}, Lo/xu$Application;->e(Lo/xu$Application;)I

    move-result p1

    return p1
.end method

.method public e(Lo/xu$Application;)I
    .locals 1

    .line 149
    iget p1, p1, Lo/xu$Application;->a:I

    iget v0, p0, Lo/xu$Application;->a:I

    invoke-static {p1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
