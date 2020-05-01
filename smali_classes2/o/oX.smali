.class Lo/oX;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final c:Lo/oX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/oX;

    invoke-direct {v0}, Lo/oX;-><init>()V

    sput-object v0, Lo/oX;->c:Lo/oX;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lo/oY;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
