.class final Lo/PrintDocument;
.super Lo/RapporEncoder;
.source ""


# static fields
.field public static final c:Lo/PrintDocument;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lo/PrintDocument;

    invoke-direct {v0}, Lo/PrintDocument;-><init>()V

    sput-object v0, Lo/PrintDocument;->c:Lo/PrintDocument;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lo/RapporEncoder;-><init>(Lo/amc;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 88
    instance-of p1, p1, Lo/PrintDocument;

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "@end"

    return-object v0
.end method
