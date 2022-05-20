using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Elevator.API.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Elevator",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    NumOfFloors = table.Column<int>(type: "integer", nullable: false),
                    NumOfBasements = table.Column<int>(type: "integer", nullable: false),
                    ActFloor = table.Column<int>(type: "integer", nullable: false),
                    Adress = table.Column<string>(type: "text", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Students", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Elevator");
        }
    }
}
