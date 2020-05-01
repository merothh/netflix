.class final Lo/Violation;
.super Lo/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Preference<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/CheckBoxPreference;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "sqliteDb"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statementString"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lo/Preference;-><init>(Lo/CheckBoxPreference;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;J)V
    .locals 0

    const-string p3, "statement"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "path"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 63
    invoke-virtual {p1, p3, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    return-void
.end method

.method public synthetic c(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;J)V
    .locals 0

    .line 48
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/Violation;->b(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;J)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x25

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Violation;->d(Ljava/lang/Object;)V

    return-void
.end method
